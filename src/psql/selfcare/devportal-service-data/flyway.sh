#!/usr/bin/env bash

#
# Apply the configuration relative to a given subscription
# Usage:
#  ./flyway.sh info|validate|migrate ENV-IO
#
#  ./flyway.sh migrate DEV-IO
#  ./flyway.sh migrate PROD-IO

echo "Running flyway.sh\n"

BASHDIR="$( cd "$( dirname "$BASH_SOURCE" )" >/dev/null 2>&1 && pwd )"
WORKDIR="$BASHDIR"

set -e

COMMAND=$1
SUBSCRIPTION=$2
DATABASE=$3
DB_SERVER_NAME="devportalservicedata-db-postgresql"
KV_NAME="kv-common"
KV_KEY__DB_ADM_USERNAME="devportal-servicedata-DB-ADM-USERNAME"
KV_KEY__DB_ADM_PASSWORD="devportal-servicedata-DB-ADM-PASSWORD"

shift 3
other=$@

if [ -z "${SUBSCRIPTION}" ]; then
    printf "\e[1;31mYou must provide a subscription as first argument.\n"
    exit 1
fi

az account set -s "${SUBSCRIPTION}"

# shellcheck disable=SC2154
printf "Subscription: %s\n" "${SUBSCRIPTION}"

psql_server_name=$(az postgres flexible-server list -o tsv --query "[?contains(name,'$DB_SERVER_NAME')].{Name:name}" | head -1)
psql_server_private_fqdn=$(az postgres flexible-server list -o tsv --query "[?contains(name,'$DB_SERVER_NAME')].{Name:fullyQualifiedDomainName}" | head -1)
keyvault_name=$(az keyvault list -o tsv --query "[?contains(name,'$KV_NAME')].{Name:name}")

# in widows, even if using cygwin, these variables will contain a landing \r character
psql_server_name=${psql_server_name//[$'\r']}
psql_server_private_fqdn=${psql_server_private_fqdn//[$'\r']}
keyvault_name=${keyvault_name//[$'\r']}

printf "Server name: %s\n" "${psql_server_name}"
printf "Server FQDN: %s\n" "${psql_server_private_fqdn}"
printf "KeyVault name: %s\n" "${keyvault_name}"

administrator_login=$(az keyvault secret show --name "$KV_KEY__DB_ADM_USERNAME" --vault-name "${keyvault_name}" -o tsv --query value)
administrator_login_password=$(az keyvault secret show --name "$KV_KEY__DB_ADM_PASSWORD" --vault-name "${keyvault_name}" -o tsv --query value)

# in widows, even if using cygwin, these variables will contain a landing \r character
administrator_login=${administrator_login//[$'\r']}
administrator_login_password=${administrator_login_password//[$'\r']}

export FLYWAY_URL="jdbc:postgresql://${psql_server_private_fqdn}:5432/${DATABASE}?sslmode=require"
export FLYWAY_USER="${administrator_login}"
export FLYWAY_PASSWORD="${administrator_login_password}"
export SERVER_NAME="${psql_server_name}"
export FLYWAY_DOCKER_TAG="7.11.1-alpine@sha256:88e1b077dd10fd115184383340cd02fe99f30a4def08d1505c1a4db3c97c5278"

if [[ $WORKDIR == /cygdrive/* ]]; then
  WORKDIR=$(cygpath -w ${WORKDIR})
  WORKDIR=${WORKDIR//\\//}
fi

echo "Running Flyway docker container"
docker run --rm --network=host -v "${WORKDIR}/${DATABASE}":/flyway/sql \
  flyway/flyway:"${FLYWAY_DOCKER_TAG}" \
  -url="${FLYWAY_URL}" -user="${FLYWAY_USER}" -password="${FLYWAY_PASSWORD}" \
  -validateMigrationNaming=true \
  -placeholders.flywayUser="${administrator_login}" \
  -placeholders.serverName="${SERVER_NAME}" "${COMMAND}" ${other}
