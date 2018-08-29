FROM python:alpine3.8
ADD requirements.txt /requirements.txt
RUN apk add --virtual .build-deps \
    postgresql-libs postgresql-dev gcc g++ gfortran binutils musl-dev python3-dev && \
    pip install --no-cache-dir numpy && \
    pip install --no-cache-dir -r /requirements.txt && \
    apk --purge del .build-deps && rm -rf /tmp/*