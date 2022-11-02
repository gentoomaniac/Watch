FROM gcr.io/tink-containers/alpine:3.16
COPY Watch /bin/Watch
ENTRYPOINT [ "/bin/Watch" ]

USER 1000
