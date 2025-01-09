include .env

# ------------------------------------------------------------------------------
# Commands

.PHONY: dev-up
dev-up: docker-up docker-exec

.PHONY: dev-exec
dev-exec: docker-exec

.PHONY: dev-down
dev-down: docker-down

.PHONY: docker-up
docker-up:
	docker compose -f compose.dev.yml up -d

.PHONY: docker-exec
docker-exec:
	docker exec -it $(DEV_DOCKER_CONTAINER) sh

.PHONY: docker-down
docker-down:
	docker compose -f compose.dev.yml down --remove-orphans
