FROM python:3.12-slim

WORKDIR /app

COPY . .
RUN pip install uv
RUN uv pip install -r pyproject.toml || uv sync && rm -rf ~/.cache
