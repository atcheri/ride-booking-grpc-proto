PROTO_DIR := proto
PROTO_SRC := $(wildcard $(PROTO_DIR)/**/*.proto)
GO_OUT := .

.PHONY: generate-proto-golang
generate-proto-golang:
	protoc \
		--proto_path=$(PROTO_DIR) \
		--go_out=$(GO_OUT)/golang \
		--go_opt=paths=source_relative \
		--go-grpc_out=$(GO_OUT)/golang \
		--go-grpc_opt=paths=source_relative \
		$(PROTO_SRC)