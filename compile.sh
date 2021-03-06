#!/bin/bash

docker build -t aws-mediainfo .
docker run -it --rm -v $PWD:/tmp aws-mediainfo bash -c '\
  cp /root/MediaInfo_CLI_GNU_FromSource/mediainfo /tmp/dist; \
  cp /root/MediaInfo_CLI_GNU_FromSource/libcurl.so.4 /tmp/dist; \
  cp /root/MediaInfo_CLI_GNU_FromSource/libcrypt.so.1 /tmp/dist; \
  cp /root/MediaInfo_CLI_GNU_FromSource/libidn2.so.0 /tmp/dist; \
  cp /root/MediaInfo_CLI_GNU_FromSource/liblber-2.4.so.2 /tmp/dist; \
  cp /root/MediaInfo_CLI_GNU_FromSource/libldap-2.4.so.2 /tmp/dist; \
  cp /root/MediaInfo_CLI_GNU_FromSource/libnghttp2.so.14 /tmp/dist; \
  cp /root/MediaInfo_CLI_GNU_FromSource/libnss3.so /tmp/dist; \
  cp /root/MediaInfo_CLI_GNU_FromSource/libnssutil3.so /tmp/dist; \
  cp /root/MediaInfo_CLI_GNU_FromSource/libsasl2.so.3 /tmp/dist; \
  cp /root/MediaInfo_CLI_GNU_FromSource/libsmime3.so /tmp/dist; \
  cp /root/MediaInfo_CLI_GNU_FromSource/libssh2.so.1 /tmp/dist; \
  cp /root/MediaInfo_CLI_GNU_FromSource/libssl3.so /tmp/dist; \
  cp /root/MediaInfo_CLI_GNU_FromSource/libunistring.so.0 /tmp/dist;'
