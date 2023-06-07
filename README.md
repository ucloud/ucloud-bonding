# bonding with arp broadcast

This is for No-Stack architecture.

### Features

1. Support IPv4 and IPv6

### Requirements

1. This is for kernel 5.4
2. Install kernel-devel, kernel-headers related kernel development packages which match the running kernel
3. Install gcc(newer gcc for centos7) and make

### Usage

1. Compile and Install the module

```bash
./install.sh
```


2. Uninstall the module

```bash
./uninstall.sh
```


3. Enable the arp broadcast

   * configure the bonding normally

   * add `echo 1 > /sys/module/bonding/parameters/arp_broadcast_mode` in /etc/rc.local

## Distribution license

bonding is distributed under the terms of the GNU General Public License v2.0. The full terms and conditions of this license are detailed in the [LICENSE](LICENSE) file.
