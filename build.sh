#!/bin/bash

# set -x
set -e

docker build --no-cache --build-arg YOUTUBE_DL_VERSION=2019.09.01 -t youtubedl-heroku18 .

docker run --rm -t -v $PWD/vendor/bin:/data youtubedl-heroku18 sh -c 'cp -f /usr/local/bin/youtube-dl /data/'
