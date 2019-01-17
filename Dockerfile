FROM alpine:3.8

ENV DKIM_VER="1.4.1"

RUN apk upgrade && \
	apk add dkimproxy
