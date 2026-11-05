.PHONY: jupyter stop

jupyter:
	uv run jupyter lab

stop:
	pkill -f "jupyter-lab" || true
