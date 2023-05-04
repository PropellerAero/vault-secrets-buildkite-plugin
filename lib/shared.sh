#!/usr/bin/env bash
set -ueo pipefail

function vault_login_with_aws_auth() {
  local login_result;
  cleanup
  login_output=$(docker run \
      --cap-add IPC_LOCK \
      --name="${container_name}" \
      -e AWS_ACCESS_KEY_ID \
      -e AWS_SECRET_ACCESS_KEY \
      -e AWS_SESSION_TOKEN \
      -- \
      "${image}" \
      vault login \
      -address "${VAULT_ADDR}" \
      -format=json \
      -method aws \
      role=${BUILDKITE_PLUGIN_VAULT_SECRETS_AUTH_ROLE} \
      header_value="${VAULT_ADDR}" \
      )
  local login_rc=$?
  if [[ $login_rc -ne 0 ]]; then
    docker container logs "${container_name}"
    exit 1
  fi

  export VAULT_TOKEN=$(echo $login_output | jq -r .auth.client_token)
}

function strip_quotes() {
  echo "${1}" | sed "s/^[[:blank:]]*//g;s/[[:blank:]]*$//g;s/[\"']//g"
}

cleanup() {
    docker container rm --force "${container_name}" > /dev/null 2>&1
}

function get_secret_kvs() {
  local secret_path="$1"
  local secrets;
  cleanup
  secrets_output=$(docker run \
      --cap-add IPC_LOCK \
      --env VAULT_TOKEN="${VAULT_TOKEN}" \
      --name="${container_name}" \
      -- \
      "${image}" \
      vault kv get \
      -address "${VAULT_ADDR}" \
      -format=json \
      "${secret_path}")

  local secrets_rc=$?
  if [[ $secrets_rc -ne 0 ]]; then
    docker container logs "${container_name}"
    exit 1
  fi
  echo "${secrets_output}"
}

load_secrets_into_env() {
  local secret_path="$1"
  local secrets
  # Export every secret key into a separate env. var.
  for kv in `echo "$(get_secret_kvs "${secret_path}")" \
  | jq -Mr .data.data \
  | jq -r "to_entries|map(\"\(.key)=\(.value|tostring)\")|.[]"`
  do \
    echo "Setting environment variable for secret `echo "${kv}" | cut -d'=' -f1` ..."
    export "${kv}"
  done
}
