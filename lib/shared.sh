#!/usr/bin/env bash
set -ueo pipefail

echo -n 'IyBzb3VyY2U6IGh0dHBzOi8vcmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbS9oYXNoaWNvcnAvdGVycmFmb3JtLWF3cy12YXVsdC9tYXN0ZXIvZXhhbXBsZXMvdmF1bHQtY29uc3VsLWFtaS9hdXRoL3NpZ24tcmVxdWVzdC5weQoKIyEvdXNyL2Jpbi9lbnYgcHl0aG9uCiMgLVdoYXQtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiMgVGhpcyBzY3JpcHQgY3JlYXRlcyBhIHJlcXVlc3QgdG8gdGhlIEFXUyBTZWN1cml0eSBUb2tlbiBTZXJ2aWNlIEFQSQojIHdpdGggdGhlIGFjdGlvbiAiR2V0Q2FsbGVySWRlbnRpdHkiIGFuZCB0aGVuIHNpZ25zIHRoZSByZXF1ZXN0IHVzaW5nIHRoZQojIEFXUyBjcmVkZW50aWFscy4gSXQgd2FzIG1vZGlmaWVkIGZyb20gdGhlIHB5dGhvbiAyLnggZXhhbXBsZSBwdWJsaXNoZWQgYnkKIyBKLiBUaG9tcHNvbiwgdGhlIGF1dGhvciBvZiB0aGUgVmF1bHQgSUFNIGF1dGggbWV0aG9kLCBhdCB0aGUgdmF1bHQgc3VwcG9ydAojIG1haWxpbmcgbGlzdC4gaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9mb3J1bS8jIXRvcGljL3ZhdWx0LXRvb2wvTWZpM08tbFc2MEkKIyAtV2h5LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIyBXZSBhcmUgdXNpbmcgcHl0aG9uIGhlcmUgaW5zdGVhZCBvZiBiYXNoIHRvIHRha2UgYWR2YW50YWdlIG9mIHRoZSBib3RvMyBsaWJyYXJ5CiMgd2hpY2ggZmFjaWxpdGF0ZXMgdGhpcyB3b3JrIGJ5IGFuIG9yZGVyIG9mIG1hZ25pdHVkZQojIC1XaGF0LWZvci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQojIFRoaXMgaXMgdXNlZnVsIGZvciBhdXRoZW50aWNhdGluZyB0byBWYXVsdCwgYmVjYXVzZSBhIGNsaWVudCBjYW4gdXNlCiMgdGhpcyBzY3JpcHQgdG8gZ2VuZXJhdGUgdGhpcyByZXF1ZXN0IGFuZCB0aGlzIHJlcXVlc3QgaXMgc2VudCB3aXRoIHRoZQojIGxvZ2luIGF0dGVtcHQgdG8gdGhlIFZhdWx0IHNlcnZlci4gVmF1bHQgdGhlbiBleGVjdXRlcyB0aGlzIHJlcXVlc3QgYW5kIGdldHMKIyB0aGUgcmVzcG9uc2UgZnJvbSBHZXRDYWxsZXJJZGVudGl0eSwgd2hpY2ggdGVsbHMgd2hvIGlzIHRyeWluZyB0byBhdXRoZW50aWNhdGUKIyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCmltcG9ydCBib3RvY29yZS5zZXNzaW9uCmZyb20gYm90b2NvcmUuYXdzcmVxdWVzdCBpbXBvcnQgY3JlYXRlX3JlcXVlc3Rfb2JqZWN0CmltcG9ydCBqc29uCmltcG9ydCBiYXNlNjQKaW1wb3J0IHN5cwoKZGVmIGhlYWRlcnNfdG9fZ29fc3R5bGUoaGVhZGVycyk6CiAgICByZXR2YWwgPSB7fQogICAgZm9yIGssIHYgaW4gaGVhZGVycy5pdGVyaXRlbXMoKToKICAgICAgICByZXR2YWxba10gPSBbdl0KICAgIHJldHVybiByZXR2YWwKCmRlZiBnZW5lcmF0ZV92YXVsdF9yZXF1ZXN0KGF3c0lhbVNlcnZlcklkKToKICAgIHNlc3Npb24gPSBib3RvY29yZS5zZXNzaW9uLmdldF9zZXNzaW9uKCkKICAgIGNsaWVudCA9IHNlc3Npb24uY3JlYXRlX2NsaWVudCgnc3RzJykKICAgIGVuZHBvaW50ID0gY2xpZW50Ll9lbmRwb2ludAogICAgb3BlcmF0aW9uX21vZGVsID0gY2xpZW50Ll9zZXJ2aWNlX21vZGVsLm9wZXJhdGlvbl9tb2RlbCgnR2V0Q2FsbGVySWRlbnRpdHknKQogICAgcmVxdWVzdF9kaWN0ID0gY2xpZW50Ll9jb252ZXJ0X3RvX3JlcXVlc3RfZGljdCh7fSwgb3BlcmF0aW9uX21vZGVsKQoKICAgIHJlcXVlc3RfZGljdFsnaGVhZGVycyddWydYLVZhdWx0LUFXUy1JQU0tU2VydmVyLUlEJ10gPSBhd3NJYW1TZXJ2ZXJJZAoKICAgIHJlcXVlc3QgPSBlbmRwb2ludC5jcmVhdGVfcmVxdWVzdChyZXF1ZXN0X2RpY3QsIG9wZXJhdGlvbl9tb2RlbCkKCiAgICByZXR1cm4gewogICAgICAgICdpYW1faHR0cF9yZXF1ZXN0X21ldGhvZCc6IHJlcXVlc3QubWV0aG9kLAogICAgICAgICdpYW1fcmVxdWVzdF91cmwnOiAgICAgICAgIGJhc2U2NC5iNjRlbmNvZGUocmVxdWVzdC51cmwpLAogICAgICAgICdpYW1fcmVxdWVzdF9ib2R5JzogICAgICAgIGJhc2U2NC5iNjRlbmNvZGUocmVxdWVzdC5ib2R5KSwKICAgICAgICAnaWFtX3JlcXVlc3RfaGVhZGVycyc6ICAgICBiYXNlNjQuYjY0ZW5jb2RlKGpzb24uZHVtcHMoaGVhZGVyc190b19nb19zdHlsZShkaWN0KHJlcXVlc3QuaGVhZGVycykpKSksICMgSXQncyBhIENhc2VJbnNlbnNpdGl2ZURpY3QsIHdoaWNoIGlzIG5vdCBKU09OLXNlcmlhbGl6YWJsZQogICAgfQoKCmlmIF9fbmFtZV9fID09ICJfX21haW5fXyI6CiAgICBhd3NJYW1TZXJ2ZXJJZCA9IHN5cy5hcmd2WzFdCiAgICBwcmludCBqc29uLmR1bXBzKGdlbmVyYXRlX3ZhdWx0X3JlcXVlc3QoYXdzSWFtU2VydmVySWQpKQo=' \
| base64 -d > /tmp/sign-aws-auth-request.py

function vault_auth_aws() {
  # parse auth data
  auth_url="${VAULT_ADDR}/v1/auth"
  if [ -n "${BUILDKITE_PLUGIN_VAULT_SECRETS_AUTH_PATH:-"aws"}" ]; then
    auth_url="${auth_url}/${BUILDKITE_PLUGIN_VAULT_SECRETS_AUTH_PATH:-"aws"}/login"
  fi
  if [ -n "${BUILDKITE_PLUGIN_VAULT_SECRETS_AUTH_HEADER:-${VAULT_ADDR}}" ]; then
    VAULT_IAM_SERVER_HEADER=$(echo ${BUILDKITE_PLUGIN_VAULT_SECRETS_AUTH_HEADER:-${VAULT_ADDR}})
  fi
  signed_request=$(python /tmp/sign-aws-auth-request.py ${VAULT_IAM_SERVER_HEADER})
  iam_request_url=$(echo $signed_request | jq -r .iam_request_url)
  iam_request_body=$(echo $signed_request | jq -r .iam_request_body)
  iam_request_headers=$(echo $signed_request | jq -r .iam_request_headers)
  data=$(cat <<EOF
{
  "role":"${BUILDKITE_PLUGIN_VAULT_SECRETS_AUTH_ROLE:-"buildkite"}",
  "iam_http_request_method": "POST",
  "iam_request_url": "$iam_request_url",
  "iam_request_body": "$iam_request_body",
  "iam_request_headers": "$iam_request_headers"
}
EOF
)
  response=$(curl --request POST --fail-with-body --data "$data" "$auth_url")
  export VAULT_TOKEN=$(echo $response | jq -r .auth.client_token)
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
  secrets=$(docker run \
      --cap-add IPC_LOCK \
      --env VAULT_TOKEN="${VAULT_TOKEN}" \
      --name="${container_name}" \
      -- \
      "${image}" \
      vault kv get \
      -address "${VAULT_ADDR}" \
      -format=json \
      "${secret_path}")
  local result=$?
  echo "${secrets}"
  if [[ $result -ne 0 ]]; then
    docker container logs "${container_name}"
    exit 1
  fi
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
