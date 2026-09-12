.PHONY: install dev lint format typecheck test check migrate up down clean

install:
	uv sync

dev: install
	uv run pre-commit install

lint:
	uv run ruff check .

format:
	uv run black .
	uv run ruff check --fix .

typecheck:
	uv run mypy src

test:
	uv run pytest

check: lint typecheck test

migrate:
	uv run alembic revision --autogenerate -m "$(m)"

up:
	docker compose up -d

down:
	docker compose down

clean:
	rm -rf .venv .pytest_cache .mypy_cache .ruff_cache
