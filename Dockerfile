# Build the application from source

FROM golang:1.21 as builder

WORKDIR /app

COPY go.mod go.sum makefile ./

RUN go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.55.2

RUN go mod download

COPY *.go ./

RUN make

FROM alpine:latest AS production

COPY --from=builder /app/target .

CMD ["./server"]