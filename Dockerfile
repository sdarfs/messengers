FROM golang:alpine AS builder

LABEL stage=gobuilder

ENV CGO_ENABLED 0

RUN apk update --no-cache && apk add --no-cache tzdata


ADD go.mod .

EXPOSE 9000

CMD ["./main"]