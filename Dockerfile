FROM docker.io/alpine:3.18.4

RUN apk add --no-cache nvme-cli=2.4-r2 lvm2=2.03.21-r3 jq=1.6-r3 bash=5.2.15-r5 

COPY entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]