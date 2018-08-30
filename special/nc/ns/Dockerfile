FROM ddliu/nc-ns:base
ADD requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt

ADD fix.sh /fix.sh
RUN /fix.sh