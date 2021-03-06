#!/usr/bin/env python
# -*- coding: utf-8 -*-

from setuptools import setup

with open('README.rst') as readme_file:
    readme = readme_file.read()

with open('HISTORY.rst') as history_file:
    history = history_file.read()

requirements = [
    # put package requirements here
]

test_requirements = [
    # put package test requirements here
]

setup(
    name='project_template',
    version='0.5.0',
    description="Python Boilerplate contains all the boilerplate you need "
                "to create a Python package.",
    long_description=readme + '\n\n' + history,
    author="David R. Smith",
    author_email='drsmith48@gmail.com',
    url='https://github.com/drsmith48/project_template',
    packages=[
        'project_template',
    ],
    package_dir={'project_template':
                 'project_template'},
    include_package_data=True,
    install_requires=requirements,
    license="MIT license",
    zip_safe=False,
    keywords='project_template',
    classifiers=[
        'Development Status :: 2 - Pre-Alpha',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: MIT License',
        'Natural Language :: English',
        "Programming Language :: Python :: 2",
        'Programming Language :: Python :: 2.6',
        'Programming Language :: Python :: 2.7',
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.3',
        'Programming Language :: Python :: 3.4',
        'Programming Language :: Python :: 3.5',
    ],
    test_suite='tests',
    tests_require=test_requirements
)
