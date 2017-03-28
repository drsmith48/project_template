===============================
ProjectTemplate
===============================


.. image:: https://img.shields.io/travis/drsmith48/project_template.svg
        :target: https://travis-ci.org/drsmith48/project_template

.. image:: https://readthedocs.org/projects/project-template/badge/?version=latest
        :target: https://project-template.readthedocs.io/en/latest/?badge=latest
        :alt: Documentation Status

.. image:: https://codecov.io/gh/drsmith48/project_template/branch/master/graph/badge.svg
  :target: https://codecov.io/gh/drsmith48/project_template

A Python project template with docs, CI, code coverage, versioning, and testing.

The structure of this project began from a ``cookiecutter`` template::

    cookiecutter https://github.com/audreyr/cookiecutter-pypackage.git

The ``cookiecutter`` template provided support for tox, Travis-CI, Makefile, pytest, sphinx documentation, and setup.py.  Support for bumpversion, coverage.py, and codecov.io was added.


**Features**

* ``make`` for build recipes

  * Run ``make`` for overview of recipes
  
* ``setup.py`` for building

  * Run ``make dist`` to build source and wheel distributions

* ``py.test`` for testing in current Python environment

  * Run ``make test`` or ``py.test``
  
* ``tox`` for testing in multiple Python environments

  * Run ``make test-all`` or ``tox``

* ``.travis.yml`` for continuous integration

  * Uses ``tox.ini`` for configuration

* ``sphinx`` for documentation

  * Run ``make docs`` to build html/latex/pdf docs

* ``flake8`` for code style check

  * Run ``make lint`` or ``flake8 project_template tests``
  
* ``coverage`` for test coverage

  * Run ``make coverage``

* ``bumpversion``

  * configuration in ``setup.cfg``

* Tox and Travis-CI for continuous integration
* codecov.io for code coverage
* pylint, pep8, and codeclimate.com for code quality
* dependencies with pyup.io
* badges
* versioning with bumpversion

Python Boilerplate contains all the boilerplate you need to create a Python package.


* Free software: MIT license
* Documentation: https://project-template.readthedocs.io.


Features
--------

* TODO

Credits
---------

This package was created with Cookiecutter_ and the `audreyr/cookiecutter-pypackage`_ project template.

.. _Cookiecutter: https://github.com/audreyr/cookiecutter
.. _`audreyr/cookiecutter-pypackage`: https://github.com/audreyr/cookiecutter-pypackage

