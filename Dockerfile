FROM alpine:3.8

RUN addgroup -S vmail && \
	adduser -S -G vmail vmail

RUN apk upgrade && \
	apk add dkimproxy
