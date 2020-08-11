#!/bin/sh

containers=$(mktemp -d /tmp/containersXXXXX)

docker run -ti --privileged --mount type=bind,source="$(pwd)",target=/src --mount type=bind,source=$containers,target=/var/lib/containers centos:8 /src/build-centos-7.sh
