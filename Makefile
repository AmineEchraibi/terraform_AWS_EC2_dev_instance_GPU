install:
	pre-commit install

init:
	terraform init

docs:
	terraform-docs markdown . > TF-DOCS.md

format:
	pre-commit run -a

fmt:
	terraform fmt -recursive && git add -A .

clean:
	rm -rf .terraform
	rm -f .terraform.lock.hcl


prepare: clean init docs fmt format
