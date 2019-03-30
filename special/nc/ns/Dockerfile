FROM python:3.7-slim
ADD requirements.txt /requirements.txt
RUN apt-get update \
    && apt-get install -y --no-install-recommends gcc \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir -r /requirements.txt \
    && apt-get purge -y --auto-remove gcc

ADD fix.sh /fix.sh
RUN /fix.sh