#!/bin/bash

echo "### Setting up the coder account."
adduser --system --group pi-bell
echo ""


echo "### Downloading the pi-bell git repo to /home/pi-bell/pi-bell-dist."
su -s/bin/bash pi-bell <<'EOF'
cd /home/pi-bell
git clone https://github.com/kfowlks/pi-bell.git pi-bell-dist
EOF
echo ""


