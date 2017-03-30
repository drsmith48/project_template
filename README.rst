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

.. image:: https://www.quantifiedcode.com/api/v1/project/5f42dea687b44b63969e8018f5bc0324/badge.svg
  :target: https://www.quantifiedcode.com/app/project/5f42dea687b44b63969e8018f5bc0324
  :alt: Code Issues

.. image:: https://pyup.io/repos/github/drsmith48/project_template/shield.svg
     :target: https://pyup.io/repos/github/drsmith48/project_template/
     :alt: Updates

.. image:: https://pyup.io/repos/github/drsmith48/project_template/python-3-shield.svg
     :target: https://pyup.io/repos/github/drsmith48/project_template/
     :alt: Python 3

.. image:: https://badge.fury.io/gh/drsmith48%2Fproject_template.svg
    :target: https://github.com/drsmith48/project_template/releases/latest
    :alt: Latest Release



**A Python project template with several best-practice features/integrations**

* Continuous integration at `Travis-CI <https://travis-ci.org/drsmith48/project_template>`_
* Documentation with ``Sphinx`` and hosted at `Read the Docs <https://project-template.readthedocs.io/>`_

  * Run ``make docs`` to generate docs

* Testing with ``pytest`` and ``tox``
  
  * Run ``pytest`` or ``make test`` to test in current environment
  * Run ``tox`` or ``make test-all`` to test in multiple virtual envs

* Quaity checks with ``coverage`` and ``flake8``; hosted at `Code Climate <https://codeclimate.com/github/drsmith48/project_template>`_ and `QuantifiedCode <https://www.quantifiedcode.com/app/project/5f42dea687b44b63969e8018f5bc0324>`_

  * Run ``coverage`` or ``make coverage`` for test coverage report
  * Run ``flake8`` or ``make lint`` for code style/quality checks

* Dependency updates and Python 3 compatability at `PyUp.io <https://pyup.io/account/repos/github/drsmith48/project_template/>`_
* Version management with ``bumpversion``
* Makefile recipes

  * Run ``make`` for recipe summaries

This project is adapted from the `Cookiecutter <https://github.com/audreyr/cookiecutter>`_ package utility and the `PyPackage <https://github.com/audreyr/cookiecutter-pypackage>`_ template.
