#!/bin/sh

# This is intended to run on a CentOS 8 host

dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm

yum install rpm-build git make mock rpmdevtools podman -y

git submodule init
git submodule update
