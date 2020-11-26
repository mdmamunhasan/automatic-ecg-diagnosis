#!/usr/bin/env bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd $DIR || exit

docker build -t mmnhsn/tf-ecg .

## For pushing the image
docker push mmnhsn/tf-ecg
