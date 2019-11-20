APP ?=demo
.PHONY: build
build: ## Build the container
	docker build -t $(APP) .