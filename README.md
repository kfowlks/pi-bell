# pi-zero-bell
pi zero door bell


TODO: Build PI Zero Tool Chain based on latest version of RASPBIAN STRETCH LITE (https://www.raspberrypi.org/downloads/raspbian/)
1) Pull RASPBIAN STRETCH LITE from repo
2) Automate WIFI configuration (preconfig/use setup code from google coder)
3) Enable v4l2 PI Camera driver i.e. bcm2835-v4l2
4) 
  

Enable Camera by editing /boot/config
# Enable audio (loads snd_bcm2835)
dtparam=audio=on
start_x=1
gpu_mem=256

Add the below to /etc/modules

# /etc/modules: kernel modules to load at boot time.
#
# This file contains the names of kernel modules that should be loaded
# at boot time, one per line. Lines beginning with "#" are ignored.

bcm2835-v4l2



Testing Pi Zero Camera Streaming

raspivid -o - -t 0 -hf -w 800 -h 400 -fps 24 |cvlc -vvv stream:///dev/stdin --sout '#standard{access=http,mux=ts,dst=:8160}' :demux=h264

