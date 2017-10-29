# pi-zero-bell
pi zero door bell


TODO: Build PI Zero Tool Chain based on latest version of RASPBIAN STRETCH LITE (https://www.raspberrypi.org/downloads/raspbian/)

TODO: Build OTA Software Upgrade

1) Pull RASPBIAN STRETCH LITE from repo
2) Automate WIFI configuration (preconfig/use setup code from google coder)
3) Enable v4l2 PI Camera driver i.e. bcm2835-v4l2
4) Install Motion to capture video motion events (capture video / send mqtt triggers )
*** BEWARE *** Latest Kernel 4.9.58+ is does not ship with V4L LoopbackDevice
5) Install / Configure Motion - Loopback Devicehttp://www.lavrsen.dk/foswiki/bin/view/Motion/LoopbackDevice
6) Test GSTREAMER from loopback device
7) Build gstreamer two way call application with Python
  

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

Aquire Additional Hardware
160 Degree Wide Angle Lens Camera 5MP with IR 
ReSpeaker 2-Mics Pi HAT (Provides Speaker/Microphone interface and has GPIO for Doorbell button/ lil)
AC to DV power board
LIPO charger to provide power/charge (Act as a UPS for doorbell unit)
Unlatched AC/DC TTL Relay to trigger mechanical door bell.
Rugged Metal with LED
3D Printed Custom Enclosure

Testing Pi Zero Camera Streaming

raspivid -o - -t 0 -hf -w 800 -h 400 -fps 24 |cvlc -vvv stream:///dev/stdin --sout '#standard{access=http,mux=ts,dst=:8160}' :demux=h264

