#!/bin/bash

# Start VNC server
sudo -u user vncserver :1 -geometry 1280x800 -depth 24

# Start noVNC proxy
/usr/share/novnc/utils/novnc_proxy --vnc localhost:5901 --listen 8080
