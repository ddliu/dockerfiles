FROM python:3.6-alpine3.6
ADD requirements.txt /requirements.txt

RUN apk --no-cache add --virtual .builddeps gcc gfortran musl-dev && \
    pip install --no-cache-dir numpy && \
    pip install --no-cache-dir -r /requirements.txt && \
    apk del .builddeps && rm -rf /root/.cache