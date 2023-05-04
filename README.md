# Vault Secrets Buildkite Plugin

Provides Secrets stored in Vault as environment variables in buildkite pipeline

Only supports KVV2 vault secrets backend.


## Usage

Add the following to your `pipeline.yml`:


### Authentication using the AWS Auth method
```yml
steps:
  - command: ls
    plugins:
      - PropellerAero/vault-secrets:
          image: 'hashicorp/vault' # optional. Defaults to https://hub.docker.com/hashicorp/vault
          tag: "1.13.1" # optional. Defaults to 1.13.1
          address: "http://vault-server:8200" # optional; can also be set as an environment variable VAULT_ADDR. plugin will error when neither is set.
          auth:
            role: a-vault-role # REQUIRED. defaults to vault aws auth role `buildkite`
            method: aws # optional. defaults to vault login method `aws`
            path: aws/custom/path # optional. Vault Auth backend path. defaults to `aws`
            header: vault.service.consul # optional. Defaults to VAULT_ADDR environment variable
          path: secrets/foo # The path to the secret in Vault

```

### Authentication using existing Vault Token (untested)
```yml
steps:
  - command: ls
    plugins:
      - PropellerAero/vault-secrets:
          image: 'hashicorp/vault' # optional. Defaults to https://hub.docker.com/hashicorp/vault
          tag: "1.13.1" # optional. Defaults to 1.13.1
          address: "http://vault-server:8200" # optional; can also be set as an environment variable VAULT_ADDR. plugin will error when neither is set.
          token: "123ASda" # REQUIRED in this auth mode.
          path: secrets/foo # path to the secret in Vault
```
