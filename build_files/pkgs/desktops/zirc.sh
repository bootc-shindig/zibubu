#!/bin/bash

#!/bin/bash

set -ouex pipefail

apt-get update

apt-get install -y software-properties-common debconf curl

# add-apt-repository -y ppa:avengemedia/danklinux
# add-apt-repository -y ppa:avengemedia/dms-git
curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0xFC44813D2A7788B7" > /etc/apt/trusted.gpg.d/avengemedia.asc

apt-get update -y

apt-get install -y hyfetch dms-git niri-git foot-git

mkdir -p /usr/share/zirconium/pixmaps/
mkdir -p /usr/share/plymouth/themes/spinner/
mkdir -p /usr/share/zirconium/skel/Pictures/

cp -r /ctx/friends/zirconium/mkosi.extra/* /

cp /ctx/friends/zircassets/logos/logo-z.svg /usr/share/zirconium/pixmaps/logo-z.svg
cp /ctx/friends/zircassets/logos/watermark.png /usr/share/plymouth/themes/spinner/watermark.png
cp -r /ctx/friends/zircassets/wallpapers /usr/share/zirconium/skel/Pictures/Wallpapers

install -d /usr/share/zirconium/

# sed --sandbox -i -e '/gnome_keyring.so/ s/-auth/auth/ ; /gnome_keyring.so/ s/-session/session/' /etc/pam.d/greetd
# fc-cache --force --really-force --system-only --verbose