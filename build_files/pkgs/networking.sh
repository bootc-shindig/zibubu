
#!/bin/bash

set -ouex pipefail

apt-get update && apt-get install -y \
    systemd-resolved \
    network-manager \
    openssh-server \
    iputils-ping \
    nm-connection-editor \
    wireguard \
    wireguard-tools


systemctl enable systemd-resolved.service
systemctl enable NetworkManager.service
systemctl disable systemd-networkd.service || true
rm /etc/resolv.conf || true
rm /usr/lib/NetworkManager/conf.d/10-globally-managed-devices.conf || true