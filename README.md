# Mediainfo for AWS Lambda

This project compiles Mediainfo under Amazon Linux 2 for use in distributing it to AWS Lambda functions.

Every example I could find on the web used ancient versions of Mediainfo. This compiles the latest version, which has quite a different output format.

### Requirements

* `docker`

### Compiling Mediainfo

This compiles Mediainfo with libcurl so that it can be useful with URLs.

`./compile.sh`

This produces 14 files in you current working directory:

* `mediainfo`
* `libcrypt.so.1`
* `libcurl.so.4`
* `libidn2.so.0`
* `liblber-2.4.so.2`
* `libldap-2.4.so.2`
* `libnghttp2.so.14`
* `libnss3.so`
* `libnssutil3.so`
* `libsasl2.so.3`
* `libsmime3.so`
* `libssh2.so.1`
* `libssl3.so`
* `libunistring.so.0`

### Usage

If you place the library files (`*.so.*`) in the base directory of the Lambda, they will be found by the `LD_LIBRARY_PATH` of the execution environment. After that, you can run `mediainfo` from just about anywhere.
