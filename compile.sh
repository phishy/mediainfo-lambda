#!/bin/bash

docker build -t aws-mediainfo .
docker run -it --rm -v $PWD:/tmp aws-mediainfo bash -c 'cp /root/MediaInfo_CLI_GNU_FromSource/mediainfo /tmp; cp /root/MediaInfo_CLI_GNU_FromSource/libcurl.so.4 /tmp'
