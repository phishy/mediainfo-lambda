# Mediainfo for AWS Lambda

--

This project compiles Mediainfo under Amazon Linux 2 for use in distributing it to AWS Lambda functions.

Every example I could find on the web used ancient versions of Mediainfo. This compiles the latest version, which has quite a different output format.

### Requirements

* `docker`

### Compiling Mediainfo

This compiles Mediainfo with libcurl so that it can be useful with URLs.

`./compile.sh`

This produces two files in you current working directory:

* `mediainfo`
* `libcurl.so.4`

### Usage

If you place `libcurl.so.4` in the base directory of the Lambda, it will be found by the `LD_LIBRARY_PATH` of the execution environment. After that, you can run `mediainfo` from just about anywhere.
