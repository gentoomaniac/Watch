FROM alpine:3.16
COPY Watch /bin/Watch
ENTRYPOINT [ "/bin/Watch" ]

USER 1000
