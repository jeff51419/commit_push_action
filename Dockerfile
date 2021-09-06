FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add git tree

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]