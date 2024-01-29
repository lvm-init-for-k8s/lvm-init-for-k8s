# Container notes
# checkov:skip=CKV_DOCKER_2: This container is used as an init
# checkov:skip=CKV_DOCKER_3: This container must be root
FROM docker.io/alpine:3.19.1

RUN apk add --no-cache \
    nvme-cli=2.6-r0 \
    lvm2=2.03.23-r0 \
    jq=1.7.1-r0 \
    bash=5.2.21-r0

COPY entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]
