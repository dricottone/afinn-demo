clean:
	rm -rf .venv
	rm -rf **/__pycache__ **/*.pyc

.venv:
	python -m venv .venv
	(. .venv/bin/activate; pip install --upgrade pip)
	(. .venv/bin/activate; pip install afinn)

run:
	(. .venv/bin/activate; python -m main)

