all: dev

deps: daisyui alpine
	uv sync

lint:
	ruff check src

typecheck:
	pyright src

dev: lint typecheck
	parallel -j0 --lb ::: \
		"$(MAKE) tailwind-watch" \
		"easy-spell dev"

output.css:
	tailwindcss \
		-i ./assets/css/tailwind.css \
		-o ./static/css/styles.css

tailwind-watch:
	tailwindcss \
		-i ./assets/css/tailwind.css \
		-o ./static/css/styles.css \
		--watch

daisyui:
	curl -sL \
		https://github.com/saadeghi/daisyui/releases/download/v5.3.7/daisyui.mjs \
		-o ./assets/css/daisyui.mjs

	curl -sL \
		https://github.com/saadeghi/daisyui/releases/download/v5.3.7/daisyui-theme.mjs \
		-o ./assets/css/daisyui-theme.mjs

alpine:
	curl -sL \
		https://cdn.jsdelivr.net/npm/alpinejs@3.15.0/dist/cdn.min.js \
		> ./static/js/alpine.min.js
