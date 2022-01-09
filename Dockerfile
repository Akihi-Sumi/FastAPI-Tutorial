FROM python:3-alpine

RUN apk add --no-cache mariadb-dev  gcc libc-dev

WORKDIR /srv/api/src

ADD requirements.txt .

RUN pip install --trusted-host pypi.python.org -r requirements.txt

COPY main.py .

CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "9000"]