init:
	if [ ! -d ".venv" ]; then \
		uv venv --python 3.11.11 .venv && $(MAKE) activate; \
	else \
		$(MAKE) activate; \
	fi

activate:
	. .venv/bin/activate && uv sync

run_gradio:
	uv run python unit_1/gradio_app.py

run_mcp:
	uv run tiny-agents run unit_1/agent.json
