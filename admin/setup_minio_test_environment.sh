#!/bin/bash
#
# knoxite
#     Copyright (c) 2016, Stefan Luecke <glaxx@glaxx.net>
#     Copyright (c) 2017, Christian Muehlhaeuser <muesli@gmail.com>
#
#   For license see LICENSE
#

export MINIO_ACCESS_KEY=USWUXHGYZQYFYFFIT3RE
export MINIO_SECRET_KEY=MOJRH0mkL1IPauahWITSVvyDrQbEEIwljvmxdq03

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    OS="linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OS="darwin"
fi

curl https://dl.minio.io/server/minio/release/$OS-amd64/minio --output minio_test

chmod +x ./minio_test
mkdir s3test
./minio_test server ./s3test &
