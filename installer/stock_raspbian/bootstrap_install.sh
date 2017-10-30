
echo "### Set up pi-bell account."
adduser --system --group pi-bell
echo ""


echo "### Fetch the latest pi-bell tree and install in /home/pi-bell/pi-bell-dist"
su -s/bin/bash pi-bell <<'EOF'
cd /home/pi-bell
git clone https://github.com/kfowlks/pi-bell.git pi-bell-dist
EOF
echo ""

echo "### Changing directory to raspian install scripts."
echo "### /home/pi-bell/pi-bell-dist/installer/stock_raspbian/scripts"
cd /home/pi-bell/pi-bell-dist/installer/stock_raspbian/scripts
echo ""

cat <<EOF

------------------------------------------------------------------
Ready to install pi-bell on your Raspberry Pi!

The following command will:
  - Update your system packages and kernel to the latest version.
  - Configure your Pi for headless operation.
  - Install all pi-bell dependencies and 3rd party node modules.
  - Set up pi-bell to boot when your Pi is restarted.

To continue, run the following:

sudo ./install_all.sh



EOF
