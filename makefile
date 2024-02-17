.DEFAULT_GOAL := build-linux

fmt:
	go fmt ./...
.PHONY:fmt

lint: fmt 
	golangci-lint run
.PHONY:lint

build-linux: lint
	CGO_ENABLED=0 GOOS=linux go build -o target/key-value-store-linux
.PHONY:build-linux

build-darwin: lint
	CGO_ENABLED=0 GOOS=darwin go build -o target/key-value-store-darwin
.PHONY:build-darwin