#!/bin/bash

docker build -t aws-mediainfo .
docker run -it --rm -v $PWD:/tmp aws-mediainfo bash
