FROM python:alpine3.8
ADD requirements.txt /requirements.txt
RUN apk add postgresql-libs && \
    apk add --virtual .build-deps gcc musl-dev postgresql-dev && \
    pip install --no-cache-dir numpy && \
    pip install --no-cache-dir -r /requirements.txt && \
    apk --purge del .build-deps gcc musl-dev postgresql-dev