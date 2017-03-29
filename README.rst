===============================
ProjectTemplate
===============================


.. image:: https://travis-ci.org/drsmith48/project_template.svg?branch=master
    :target: https://travis-ci.org/drsmith48/project_template
    :alt: Build Status

.. image:: https://readthedocs.org/projects/project-template/badge/?version=latest
        :target: https://project-template.readthedocs.io/en/latest/
        :alt: Documentation Status

.. image:: https://codeclimate.com/github/drsmith48/project_template/badges/coverage.svg
   :target: https://codeclimate.com/github/drsmith48/project_template/coverage
   :alt: Test Coverage

.. image:: https://codeclimate.com/github/drsmith48/project_template/badges/gpa.svg
   :target: https://codeclimate.com/github/drsmith48/project_template
   :alt: Code Quality
   
Most recent release:

.. image:: https://badge.fury.io/gh/drsmith48%2Fproject_template.svg
    :target: https://github.com/drsmith48/project_template/releases/latest
    :alt: GitHub Release

.. image:: https://readthedocs.org/projects/project-template/badge/?version=stable
        :target: https://project-template.readthedocs.io/en/stable/
        :alt: Documentation Status




A Python project template with docs, testing, CI, code coverage, and versioning.

* Open-source development

  * Hosted at https://github.com/drsmith48/project_template

* Documentation

  * ``sphinx`` for generation of html/pdf documentation

    * Run ``make docs`` to generate docs

  * Hosted at https://project-template.readthedocs.io/

* Testing

  * ``pytest``, ``tox``, ``coverage``, and ``flake8`` for testing, test coverate, and code QA
  
    * Run ``pytest`` or ``make test`` to test in current environment
    * Run ``tox`` or ``make test-all`` to test in multiple virtual envs
    * Run ``coverage`` or ``make coverage`` for test coverate report
    * Run ``flake8`` or ``make lint`` for code style/quality checks
    
  * Hosted at https://codeclimate.com/github/drsmith48/project_template

* Continuous integration

  * Hosted at https://travis-ci.org/drsmith48/project_template

* Versioning

  * Run ``bumpversion [major|minor|patch]`` to increment X.Y.Z version

* Makefile recipes

  * Run ``make`` for an overview of recipes

This project is adapted from the ``cookiecutter`` package template engine and the ``cookiecutter-pypackage`` template.  https://github.com/audreyr/cookiecutter
