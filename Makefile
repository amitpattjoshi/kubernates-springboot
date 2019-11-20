VERSION = $(shell git rev-parse HEAD)
APP ?=demo
IMAGE=$(APP):${VERSION}
.PHONY: build
build: ## Build the container
	docker build -t $(IMAGE) .