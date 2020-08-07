#!/bin/sh
set -e
# This is intended to run on a CentOS 7 or 8 host

yum install epel-release -y

yum install rpm-build git make mock rpmdevtools createrepo podman rsync -y

cd $(dirname $0)
git submodule init
git submodule update
