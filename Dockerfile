FROM python:${PYTHON_VERSION:-3.8}-alpine

RUN apk update
RUN apk add sshpass openssh
RUN apk add docker git
RUN apk add --no-cache musl-dev libffi-dev openssl-dev make gcc python3-dev
RUN apk add nano bash
RUN pip install cffi
RUN pip install ansible
