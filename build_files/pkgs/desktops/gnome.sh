#!/bin/bash

set -ouex pipefail

apt install -y ubuntu-desktop-minimal python3-nautilus

apt install -y network-manager-openconnect-gnome \
    network-manager-openvpn-gnome \
    network-manager-ssh-gnome \
    network-manager-sstp-gnome \
    network-manager-vpnc-gnome \
    gcr

systemctl enable gdm

apt-get remove -y packagekit totem snapshot shotwell simple-scan \
    transmission-gtk rhythmbox update-manager gnome-calculator gnome-terminal remmina usb-creator-gtk \
    gnome-clocks deja-dup "libreoffice*" || true