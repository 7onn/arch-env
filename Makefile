.PHONY: lint
lint:
	yamllint .
	ansible-lint .
