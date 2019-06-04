#!/bin/bash
set -x
thisdir=$(readlink -f $(dirname $0))
workspacedir=$(dirname $thisdir)
mkdir -p $workspacedir/depbld
cd $workspacedir/depbld
if [ ! -f Makefile ] ; then
    cmake $thisdir/dep -DCMAKE_INSTALL_PREFIX=$workspacedir/depinstall
fi
make
