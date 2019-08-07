#!/bin/bash -eux

pipenv install -r test-requirements.txt --python 2.7

# set the package name
export PACKAGE=auditbeat

# RHEL 8.0
export DOCKER_IMAGE_BASE=apolloclark/ubi8:8.0
export DOCKER_INST_NAME_SUFFIX=rhel_8.0
export PACKAGE_VERSION=7.3.0
pipenv run molecule test --all

# RHEL 7.6
export DOCKER_IMAGE_BASE=apolloclark/ubi7:7.6
export DOCKER_INST_NAME_SUFFIX=rhel_7.6
export PACKAGE_VERSION=7.3.0
pipenv run molecule test --all

# CentOS 7.6
export DOCKER_IMAGE_BASE=centos:7.6.1810
export DOCKER_INST_NAME_SUFFIX=centos_7.6.1810
export PACKAGE_VERSION=7.3.0
pipenv run molecule test --all

# Ubuntu Bionic
export DOCKER_IMAGE_BASE=ubuntu:bionic
export DOCKER_INST_NAME_SUFFIX=ubuntu_bionic
export PACKAGE_VERSION=7.3.0
pipenv run molecule test --all

# Ubuntu Xenial
export DOCKER_IMAGE_BASE=ubuntu:xenial
export DOCKER_INST_NAME_SUFFIX=ubuntu_xenial
export PACKAGE_VERSION=7.3.0
pipenv run molecule test --all

# Debian Stretch
export DOCKER_IMAGE_BASE=debian:stretch
export DOCKER_INST_NAME_SUFFIX=debian_stretch
export PACKAGE_VERSION=7.3.0
pipenv run molecule test --all

# Debian Jessie
export DOCKER_IMAGE_BASE=debian:jessie
export DOCKER_INST_NAME_SUFFIX=debian_jessie
export PACKAGE_VERSION=7.3.0
pipenv run molecule test --all
