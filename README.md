# Vault Secrets Buildkite Plugin

Provides secrets stored in Vault as environment variables in a buildkite pipeline.
Each key inside the secret on the given `path` will be exported into the environment as an individual variable.

Only supports KV version 2 secrets backend and the AWS authentication method.

## Usage

Add the following to your `pipeline.yml`:

```yml
steps:
  - command: deploy-things
    plugins:
      - PropellerAero/vault-secrets:
          image: 'hashicorp/vault' # optional. Defaults to https://hub.docker.com/hashicorp/vault
          tag: "1.13.1" # optional. Defaults to 1.13.1
          address: "http://vault-server:8200" # optional; can also be set as an environment variable VAULT_ADDR. plugin will error when neither is set.
          auth:
            role: a-vault-role # REQUIRED. defaults to vault aws auth role `buildkite`
            path: aws-auth-custom-path # optional; Vault Auth backend path. defaults to `aws`
            header: vault.service.consul # optional; Defaults to the value of the VAULT_ADDR environment variable
          path: secrets/foo # REQUIRED. The path to the secret in Vault

```
