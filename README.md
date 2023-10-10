# lvm-init-for-k8s

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

A tool to initialize available local storage using LVM2

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| ryanfaircloth |  |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| config.platform | string | `"unknown"` |  |
| fullnameOverride | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| images.init.pullPolicy | string | `"IfNotPresent"` |  |
| images.init.repository | string | `"ghcr.io/lvm-init-for-k8s/containers/lvm-init-for-k8s"` |  |
| images.init.tag | string | `""` |  |
| images.kubectl.pullPolicy | string | `"IfNotPresent"` |  |
| images.kubectl.repository | string | `"bitnami/kubectl"` |  |
| images.kubectl.tag | string | `""` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext.privileged | bool | `true` |  |
| securityContext.readOnlyRootFilesystem | bool | `false` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.11.3](https://github.com/norwoodj/helm-docs/releases/v1.11.3)
