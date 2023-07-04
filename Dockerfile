ARG  PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION}-alpine

RUN apk update
RUN apk add sshpass openssh docker git nano bash
RUN apk add --no-cache musl-dev libffi-dev openssl-dev make gcc python3-dev
RUN pip install cffi
RUN pip install ansible
