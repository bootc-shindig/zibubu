#!/bin/bash

set -ouex pipefail

apt-get install -y snapd ca-certificates

systemctl enable snap.mount