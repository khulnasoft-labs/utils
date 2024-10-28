# utils

[![Lint & Test](https://github.com/khulnasoft-lab/utils/actions/workflows/lint-test.yml/badge.svg)](https://github.com/khulnasoft-lab/utils/actions/workflows/lint-test.yml)
[![Coverage Status](https://coveralls.io/repos/github/khulnasoft-lab/utils/badge.svg?branch=main)](https://coveralls.io/github/khulnasoft-lab/utils?branch=main)
[![GoDoc](https://godoc.org/github.com/khulnasoft-lab/utils?status.svg)](https://pkg.go.dev/mod/github.com/khulnasoft-lab/utils)
![License](https://img.shields.io/dub/l/vibe-d.svg)

utils extends the core Go packages with missing or additional functionality built in. All packages correspond to the std go package name with an additional suffix of `ext` to avoid naming conflicts.

## Motivation

This is a place to put common reusable code that is not quite a library but extends upon the core library, or it's failings.

## Install

`go get -u github.com/khulnasoft-lab/utils`


## Highlights
- Generic Doubly Linked List.
- Result & Option types
- Generic Mutex and RWMutex.
- Bytes helper placeholders units eg. MB, MiB, GB, ...
- Detachable context.
- Retrier for helping with any fallible operation.
- Proper RFC3339Nano definition.
- unsafe []byte->string & string->[]byte helper functions.
- HTTP helper functions and constant placeholders.
- And much, much more.

## How to Contribute

Make a pull request... can't guarantee it will be added, going to strictly vet what goes in.