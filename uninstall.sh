#!/bin/bash

name=bonding
kver=$(uname -r)
installdir=/lib/modules/$kver/extra

rm -f $installdir/$name.ko
depmod -a
echo "-----done-----"
