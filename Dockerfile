FROM python:3-alpine

WORKDIR /srv/api/src

ADD requirements.txt .

RUN pip install --trusted-host pypi.python.org -r requirements.txt