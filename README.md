# bonding with arp broadcast

This is for No-Stack architecture.

### Features

1. Support IPv4 and IPv6

### Requirements

1. This is for kernel 3.10 and centos 7

### Usage

1. Compile and Install the module

```bash
yum install -y gcc make dkms
git clone https://github.com/ucloud/ucloud-bonding -b v3.10
cd ucloud-bonding
ln -sf  `pwd`  /usr/src/ucloud-bonding-1.0.0
dkms add -m ucloud-bonding -v 1.0.0
dkms install -m ucloud-bonding -v 1.0.0
```


2. Uninstall the module

```bash
dkms uninstall -m ucloud-bonding -v 1.0.0
dkms remove ucloud-bonding/1.0.0 --all
```


3. Enable the arp broadcast(configure bonding in netcfg first)

```bash
install -m0644 ucloud-bonding-settings.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable ucloud-bonding-settings
```

## Distribution license

bonding is distributed under the terms of the GNU General Public License v2.0. The full terms and conditions of this license are detailed in the [LICENSE](LICENSE) file.
