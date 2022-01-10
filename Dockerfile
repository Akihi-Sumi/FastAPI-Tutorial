FROM python:3-alpine

ADD requirements.txt .

RUN pip install --trusted-host pypi.python.org -r requirements.txt
