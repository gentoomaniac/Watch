FROM alpine:3.17
COPY Watch /bin/Watch
ENTRYPOINT [ "/bin/Watch" ]

USER 1000
