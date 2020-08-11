#!/bin/sh

containers=$(mktemp -d /tmp/containersXXXXX)

# We run mock in CentOS 8
docker run -ti --privileged --mount type=bind,source="$(pwd)",target=/src --mount type=bind,source=$containers,target=/var/lib/containers amazonlinux:2 /src/build-amazonlinux-2.sh
