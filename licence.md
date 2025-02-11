6. **Makefile**
```makefile
PYTHON = python3
PIP = pip3
DOCKER = docker

install:
	$(PIP) install -r requirements.txt

test:
	$(PYTHON) -m pytest tests/ -v

lint:
	$(PYTHON) -m flake8 .

run:
	$(PYTHON) app.py

docker-build:
	$(DOCKER) build -t myapp .

docker-run:
	$(DOCKER) run -p 5000:5000 myapp

.PHONY: install test lint run docker-build docker-run
