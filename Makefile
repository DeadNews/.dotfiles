.PHONY: all clean test checks

dotbot:
	dotbot -c install.conf.yaml

pc-install:
	pre-commit install

checks: pc-run

pc-run:
	pre-commit run -a
