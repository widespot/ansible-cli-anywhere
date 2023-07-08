ARG  PYTHON_VERSION=3.11
FROM python:${PYTHON_VERSION}-alpine

ARG  ANSIBLE_VERSION=8

# When running pip install ansible, without this line:
# ERROR: Could not build wheels for cffi, which is required to install pyproject.toml-based projects
RUN apk add --update --no-cache musl-dev libffi-dev gcc \
  && pip install cffi \
  && apk del musl-dev libffi-dev gcc

RUN pip install ansible==$ANSIBLE_VERSION

COPY bashrc /etc/bash/setup_proxy.sh

RUN apk add --update --no-cache sshpass openssl openssh docker git nano bash
