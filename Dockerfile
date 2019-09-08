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
