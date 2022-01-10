FROM python:3-alpine

RUN apk add --no-cache mariadb-dev  gcc libc-dev

ADD requirements.txt .

RUN pip install --trusted-host pypi.python.org -r requirements.txt

CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "9000"]
