FROM golang:1.16-alpine as builder

ENV ROOT=/go/src/app
WORKDIR ${ROOT}

RUN apk update && apk add git
COPY go.* ./
RUN go mod download

COPY . ${ROOT}
RUN CGO_ENABLED=0 GOOS=linux go build -o $ROOT/go-binary


FROM scratch

ENV ROOT=/go/src/app
WORKDIR ${ROOT}
COPY --from=builder ${ROOT}/go-binary ${ROOT}
COPY --from=builder ${ROOT}/static ${ROOT}/static

EXPOSE 3000
CMD ["/go/src/app/go-binary"]