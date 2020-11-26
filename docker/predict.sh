#!/usr/bin/env bash

docker ps -a | egrep 'dnn-ecg' | awk '{print $1}' | xargs docker kill
docker ps -a | egrep 'dnn-ecg' | awk '{print $1}' | xargs docker rm

docker run -d --name dnn-ecg -p 8001:8000 -v $(pwd):/src mmnhsn/tf-ecg predict.py
