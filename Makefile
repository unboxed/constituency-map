DOCKER-RUN = docker compose run --rm

.DEFAULT_GOAL := up

up:
	docker compose up || true

down:
	docker compose down

shell:
	$(DOCKER-RUN) web bash
