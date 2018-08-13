#!/bin/bash
IMG=ddliu/nc-ns
docker build . -t $IMG
docker push $IMG