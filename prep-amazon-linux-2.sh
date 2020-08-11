#!/bin/sh
set -e
# This is intended to run on an Amazon Linux 2 host

yum install amazon-linux-extras -y

amazon-linux-extras install mock -y

yum install rpm-build git make rpmdevtools rsync -y

$(dirname $0)/locale.sh

cd $(dirname $0)
git submodule init
git submodule update

make getsrc
