# Container notes
# checkov:skip=CKV_DOCKER_2: This container is used as an init
# checkov:skip=CKV_DOCKER_3: This container must be root
FROM docker.io/alpine:3.19.0

RUN apk add --no-cache nvme-cli lvm2 jq bash

COPY entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]
