include compose.dev.env

# Main Commands
# ------------------------------------------------------------------------------

.PHONY: dev-up
dev-up: _docker-up _docker-exec

.PHONY: dev-exec
dev-exec: _docker-exec

.PHONY: dev-down
dev-down: _docker-down

# Inner Commands
# ------------------------------------------------------------------------------

.PHONY: _docker-up
_docker-up:
	docker compose --env-file compose.dev.env -f compose.dev.yml up -d

.PHONY: _docker-exec
_docker-exec:
	docker exec -it $(DEV_DOCKER_CONTAINER) sh

.PHONY: _docker-down
_docker-down:
	docker compose --env-file compose.dev.env -f compose.dev.yml down --remove-orphans
