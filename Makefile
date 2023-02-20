SHELL:=/bin/bash
.SILENT:

.PHONY: docs hooks
docs:
	terraform-docs markdown --config .terraform-docs.yaml .

hooks:
	cp .githooks/pre-commit .git/hooks/pre-commit
	chmod +x .git/hooks/pre-commit
