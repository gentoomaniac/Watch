FROM alpine:3.17

RUN apk --no-cache add curl

COPY Watch /bin/Watch
ENTRYPOINT [ "/bin/Watch" ]

USER 1000
