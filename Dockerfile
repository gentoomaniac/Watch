FROM golang:1.17-alpine AS builder

RUN mkdir /build
RUN mkdir /app
WORKDIR /app

COPY . /app

RUN go build -v -o /build /app

FROM alpine:3.15
RUN apk add --no-cache curl
RUN mkdir /build
COPY --from=builder /build .

ENTRYPOINT ["/Watch"]
