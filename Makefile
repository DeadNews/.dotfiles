.PHONY: all clean test

dotbot:
	dotbot -c install.conf.yaml

pc-install:
	pre-commit install

pc-run:
	pre-commit run -a
