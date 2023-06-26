#!/bin/bash

name=bonding
kver=$(uname -r)
installdir=/lib/modules/$kver/extra

echo "-----compiling for $kver-----"
make -C /lib/modules/$kver/build M=$(pwd) modules
if [[ $? -ne 0 ]]; then
    echo "compile failed, check kernel-devel/kernel-header pkg or gcc version"
    exit 1
fi

mkdir -p $installdir

echo "-----installing $name.ko to $installdir-----"
install ./$name.ko $installdir

depmod -a
echo "-----done-----"
