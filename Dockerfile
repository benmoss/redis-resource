FROM alpine:latest
MAINTAINER Ben Moss <ben@mossity.com>

RUN apk --update add redis bash jq util-linux

COPY assets/ /opt/resource/
RUN chmod +x /opt/resource/*
