FROM amazonlinux

RUN yum update -y
RUN yum install -y git gcc gcc-c++ make tar xz libcurl-devel openssl-devel

WORKDIR /root
ADD https://mediaarea.net/download/binary/mediainfo/19.07/MediaInfo_CLI_19.07_GNU_FromSource.tar.xz /root
RUN tar -xf MediaInfo_CLI_19.07_GNU_FromSource.tar.xz

WORKDIR /root/MediaInfo_CLI_GNU_FromSource
ADD https://curl.haxx.se/download/curl-7.65.3.tar.gz /root/MediaInfo_CLI_GNU_FromSource
RUN tar -zxvf curl-7.65.3.tar.gz
RUN mv curl-7.65.3 curl

WORKDIR /root/MediaInfo_CLI_GNU_FromSource/curl
RUN ./configure --disable-shared --enable-static
RUN make

WORKDIR /root/MediaInfo_CLI_GNU_FromSource
RUN ./CLI_Compile.sh --with-libcurl=/root/MediaInfo_CLI_GNU_FromSource/curl --enable-staticlibs
RUN cp MediaInfo/Project/GNU/CLI/mediainfo .
RUN cp /lib64/libcurl.so.4 .
RUN cp /lib64/libcrypt.so.1 .
RUN cp /lib64/libidn2.so.0 .
RUN cp /lib64/liblber-2.4.so.2 .
RUN cp /lib64/libldap-2.4.so.2 .
RUN cp /lib64/libnghttp2.so.14 .
RUN cp /lib64/libnss3.so .
RUN cp /lib64/libnssutil3.so .
RUN cp /lib64/libsasl2.so.3 .
RUN cp /lib64/libsmime3.so .
RUN cp /lib64/libssh2.so.1 .
RUN cp /lib64/libssl3.so .
RUN cp /lib64/libunistring.so.0 .
