VERSION = $(shell git rev-parse HEAD)
APP ?=demo
IMAGE=$(APP):${VERSION}
.PHONY: build
build: ## Build the container
	docker build -t $(IMAGE) .
run:
	docker run -p 8081:8081 demo:a988c7309e3fa2bda1287db7669acf50f4ca352c