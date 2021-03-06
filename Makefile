.PHONY: clean clean-test clean-pyc clean-build docs help
.DEFAULT_GOAL := help
define BROWSER_PYSCRIPT
import os, webbrowser, sys
try:
	from urllib import pathname2url
except:
	from urllib.request import pathname2url

webbrowser.open("file://" + pathname2url(os.path.abspath(sys.argv[1])))
endef
export BROWSER_PYSCRIPT

define PRINT_HELP_PYSCRIPT
import re, sys

for line in sys.stdin:
	match = re.match(r'^([a-zA-Z_-]+):.*?## (.*)$$', line)
	if match:
		target, help = match.groups()
		print("%-20s %s" % (target, help))
endef
export PRINT_HELP_PYSCRIPT
BROWSER := python -c "$$BROWSER_PYSCRIPT"

help:
	@python -c "$$PRINT_HELP_PYSCRIPT" < $(MAKEFILE_LIST)

test: ## run tests in current Python environment with pytest
	py.test --verbose tests/
	
test-all: ## run tests in several Python environments with tox
	rm -fr .tox/
	tox

lint: ## check code style/quality with flake8
	rm -f flake8*
	flake8 --exit-zero --benchmark project_template/ tests/

coverage: ## check code coverage and show report in terminal
	rm -f .coverage
	coverage run --module pytest --verbose tests/
	coverage report

coverage-html: coverage ## check code coverage and show report in browser
	@rm -fr htmlcov/
	@coverage html
	@$(BROWSER) htmlcov/index.html

docs: clean-docs docs-pdf docs-html ## generate HTML & PDF documentation

docs-html: ## generate HTML documentation
	$(MAKE) -C docs html
	@$(BROWSER) docs/_build/html/index.html
    
docs-pdf: ## generate PDF documentation
	$(MAKE) -C docs latexpdf

clean: clean-build clean-pyc clean-docs ## remove all build, docs, and Python artifacts

clean-build: ## remove build artifacts
	rm -fr build/
	rm -fr dist/
	rm -fr .eggs/
	find . -name '*.egg-info' -exec rm -fr {} +
	find . -name '*.egg' -exec rm -f {} +

clean-pyc: ## remove Python file artifacts
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +

clean-docs: ## clean docs
	rm -f docs/project_template.rst
	rm -f docs/modules.rst
	sphinx-apidoc -o docs/ project_template
	$(MAKE) -C docs clean

servedocs: docs ## compile the docs watching for changes
	watchmedo shell-command -p '*.rst' -c '$(MAKE) -C docs html' -R -D .

release: clean ## package and upload a release
	python setup.py sdist upload
	python setup.py bdist_wheel upload

dist: clean ## builds source and wheel package
	python setup.py sdist
	python setup.py bdist_wheel
	ls -l dist

install: clean ## install the package to the active Python's site-packages
	python setup.py install
