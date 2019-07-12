#!/bin/bash -eux

pipenv install -r test-requirements.txt --python 2.7

# CentOS 7
export DOCKER_IMAGE_BASE=centos:7.6.1810
export DOCKER_INST_NAME_SUFFIX=centos_7.6.1810
pipenv run molecule test --all

# Ubuntu Bionic
export DOCKER_IMAGE_BASE=ubuntu:bionic
export DOCKER_INST_NAME_SUFFIX=ubuntu_bionic
pipenv run molecule test --all

# Ubuntu Xenial
export DOCKER_IMAGE_BASE=ubuntu:xenial
export DOCKER_INST_NAME_SUFFIX=ubuntu_xenial
pipenv run molecule test --all

# Debian Stretch
export DOCKER_IMAGE_BASE=debian:stretch
export DOCKER_INST_NAME_SUFFIX=debian_stretch
pipenv run molecule test --all

# Debian Jessie
export DOCKER_IMAGE_BASE=debian:jessie
export DOCKER_INST_NAME_SUFFIX=debian_jessie
pipenv run molecule test --all
