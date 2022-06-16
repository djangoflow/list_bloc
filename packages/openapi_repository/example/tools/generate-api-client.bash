#!/bin/bash
export TARGET_DIR=./openapi
export DART_POST_PROCESS_FILE="/usr/local/bin/dartfmt -w"
export API_VERSION=v0
cd "$(dirname "${BASH_SOURCE[0]}")"/.. || exit

[ -d ${TARGET_DIR} ] || mkdir -p ${TARGET_DIR}
${OPENAPI_GENERATOR:-openapi-generator} generate -g dart-dio-next -p browserClient=false -p nullableFields=true \
    -i /Users/adar/Development/apexlabs/list_bloc-1/packages/openapi_repository/example/swagger.yml -o ${TARGET_DIR} \
  && cd ${TARGET_DIR} \
  && dart run build_runner build --delete-conflicting-outputs
