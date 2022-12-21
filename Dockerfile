FROM python:3.8.13-alpine3.15

WORKDIR /app

COPY ./src /app
COPY ./requirements.txt requirements.txt

RUN apk add --update --no-cache --virtual .tmp-build-deps \
    gcc libc-dev linux-headers postgresql-dev && \
    pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt