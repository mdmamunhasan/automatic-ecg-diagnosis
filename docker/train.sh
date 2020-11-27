#!/usr/bin/env bash

docker ps -a | egrep 'dnn-ecg' | awk '{print $1}' | xargs docker kill
docker ps -a | egrep 'dnn-ecg' | awk '{print $1}' | xargs docker rm

docker run -i --name dnn-ecg -v $(pwd):/src mmnhsn/tf-ecg train.py download/data/ecg_tracings.hdf5 data/csv_files
