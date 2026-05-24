#!/bin/bash

set -ouex pipefail

case "${DESKTOP}" in
  plasma)
    /ctx/pkgs/desktops/plasma.sh
    ;;
  gnome)
    /ctx/pkgs/desktops/gnome.sh
    ;;
  zirc)
    /ctx/pkgs/desktops/zirc.sh
    ;;
  *)
    echo "Installing server as fallback..." >&2
    ;;
esac

/ctx/pkgs/networking.sh
/ctx/pkgs/uupd.sh
/ctx/pkgs/security.sh
/ctx/pkgs/dx.sh
/ctx/pkgs/snap.sh