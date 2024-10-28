export SHELL := /bin/bash
export SHELLOPTS := errexit

GOPATH ?= $(shell go env GOPATH)
BIN_DIR := $(GOPATH)/bin
GOLANGCI_LINT := $(BIN_DIR)/golangci-lint
GOCMD=GO111MODULE=on go

.PHONY: lint lintfix test fuzz bench

$(GOLANGCI_LINT):
	curl -sfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(BIN_DIR) v1.54.2

lint: $(GOLANGCI_LINT)
	@$(GOLANGCI_LINT) run --timeout 5m

lintfix: $(GOLANGCI_LINT)
	@$(GOLANGCI_LINT) run --fix --timeout 5m

test:
	$(GOCMD) test -cover -race ./...

bench:
	$(GOCMD) test -run=NONE -bench=. -benchmem  ./...

fuzz:
	$(GOCMD) test -fuzztime=10s -fuzz=FuzzSafeOpen -run "FuzzSafeOpen" ./file/...