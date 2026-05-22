#!/bin/bash

set -ouex pipefail

apt install -y kubuntu-desktop sddm-theme-breeze kde-config-sddm kubuntu-settings-desktop kubuntu-wallpapers ubuntu-wallpapers plymouth-theme-kubuntu-logo

#apt-get remove -y packagekit remmina okular usb-creator-kde "libreoffice*" synaptic kmahjongg kmines kpat ksudoku neochat haruna skanpage

systemctl enable sddm