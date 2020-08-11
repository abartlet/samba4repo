#!/bin/sh

set -e

# This command only builds CentOS 7, which avoids the problems
# building Fedora 32 under docker

cd $(dirname $0)

$(dirname $0)/prep.sh

make MOCKS=samba4repo-7-x86_64 SAMBAPKGS="libtalloc-2.3.x-srpm  libtdb-1.4.x-srpm libtevent-0.10.x-srpm libldb-2.1.x-srpm  compat-nettle32-3.x-srpm compat-gnutls34-3.x-srpm  samba-4.12.x-srpm"
