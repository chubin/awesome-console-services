FROM alpine:latest

LABEL version="0.0.1"
LABEL maintainer="David Adi Nugroho <davidadi216@gmail.com>"

RUN apk add bash
RUN apk add curl
RUN apk add netcat-openbsd

COPY entrypoint.sh /usr/local/bin/entrypoint

RUN chmod +x /usr/local/bin/entrypoint

ENTRYPOINT ["/usr/local/bin/entrypoint"]