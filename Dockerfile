FROM alpine:3.7

ENV DKIM_VER="1.4.1"

RUN apk add -U perl-mail-dkim \
		perl-net-server make && \
	cd ~ && \
	wget http://http.debian.net/debian/pool/main/d/dkimproxy/dkimproxy_$DKIM_VER.orig.tar.gz && \
	tar xf dkimproxy_$DKIM_VER.orig.tar.gz && cd ~/dkimproxy-$DKIM_VER/ && \
	./configure --prefix=/opt/dkimproxy && \
	make -j$(nproc) && \
	make install && \
	apk del make && \
	rm -rf ~/*
