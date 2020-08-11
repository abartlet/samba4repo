#!/bin/sh

set -e

# This command only builds Amazon Linux 2, which avoids the problems
# building Fedora 32 under docker

./$(dirname $0)/prep-amazon-linux-2.sh



cd $(dirname $0)

export LC_ALL=en_US.utf8
export LANG=en_US.utf8
make CFGS=samba4repo-amazonlinux-2-x86_64.cfg MOCKCFGS=amazonlinux-2-x86_64.cfg MOCKS=samba4repo-amazonlinux-2-x86_64 SAMBAPKGS="libtalloc-2.3.x-srpm  libtdb-1.4.x-srpm libtevent-0.10.x-srpm libldb-2.1.x-srpm  compat-nettle32-3.x-srpm compat-gnutls34-3.x-srpm  samba-4.12.x-srpm"
