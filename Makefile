VERSION = $(shell git rev-parse HEAD)
APP ?=demo
IMAGE=amitpattjoshi/$(APP):${VERSION}
.PHONY: build
build: ## Build the container
	docker build -t $(IMAGE) .
run:
	docker run -p 8081:8081 demo:demo:42e2af4ab9523089b07faeca4480f619e881b7e6
push:
	docker push $(IMAGE)