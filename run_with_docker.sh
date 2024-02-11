#!/bin/bash

set -euxo pipefail

docker build -t codecraft-jekyll .
docker run --volume=$PWD:/srv/jekyll -p 4000:4000 -it codecraft-jekyll