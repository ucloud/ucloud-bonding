# bonding with arp broadcast

This is for No-Stack architecture.

### Features

1. Support IPv4 and IPv6

### Requirements

1. This is for kernel 5.15 and ubuntu

### Usage

1. Compile and Install the module

```bash
sudo apt update
sudo apt install -y gcc make
git clone https://github.com/ucloud/ucloud-bonding -b v5.15
cd ucloud-bonding
sudo ln -sf  `pwd`  /usr/src/ucloud-bonding-1.0.0
sudo dkms add -m ucloud-bonding -v 1.0.0
sudo dkms install -m ucloud-bonding -v 1.0.0
```


2. Uninstall the module

```bash
sudo dkms uninstall -m ucloud-bonding -v 1.0.0
sudo dkms remove ucloud-bonding/1.0.0 --all
```


3. Enable the arp broadcast(configure bonding in netcfg first)

```bash
sudo install -m0644 ucloud-bonding-settings.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable ucloud-bonding-settings
```

## Distribution license

bonding is distributed under the terms of the GNU General Public License v2.0. The full terms and conditions of this license are detailed in the [LICENSE](LICENSE) file.
