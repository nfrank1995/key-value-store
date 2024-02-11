.DEFAULT_GOAL := build

fmt:
	go fmt ./...
.PHONY:fmt

lint: fmt 
	golangci-lint run
.PHONY:lint

build: lint
	CGO_ENABLED=0 GOOS=linux go build -o target/server service.go
.PHONY:build