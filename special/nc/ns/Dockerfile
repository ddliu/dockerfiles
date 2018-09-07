FROM python:alpine3.8
ADD requirements.txt /requirements.txt
RUN apk add --no-cache --virtual .build-deps \
    gcc g++ gfortran binutils musl-dev python3-dev openblas-dev && \
    apk add --no-cache tzdata postgresql-dev libstdc++ openblas && \
    pip install --no-cache-dir numpy && \
    pip install --no-cache-dir -r /requirements.txt && \
    apk --purge del .build-deps && rm -rf /tmp/*

ADD fix.sh /fix.sh
RUN /fix.sh
