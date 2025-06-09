init:
	if [ ! -d ".venv" ]; then \
		uv venv --python 3.11.11 .venv && $(MAKE) activate; \
	else \
		$(MAKE) activate; \
	fi

activate:
	python -m venv .venv && source .venv/bin/activate && uv sync

run_gradio:
	uv run python unit_1/gradio_app.py

run_mcp:
	uv run tiny-agents run unit_1/agent.json

run_mcp_sentiment:
	uv run python unit_2/mcp-sentiment/app.py

run_mcp_gradio:
	uv run python unit_2/mcp-client-gradio/app.py
