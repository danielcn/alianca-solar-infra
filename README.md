# alianca-solar-infra

Infrastructure for Aliança Solar.

## Modules

- [Cloud Run Module](./modules/cloudrun/README.md)

## Variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| `environment` | Environment (e.g., dev, prod) | `string` | `dev` | No |

## State Management

If required to move the state:

```sh
terraform init -migrate-state
```
