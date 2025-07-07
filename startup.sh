#!/bin/bash

sudo -u user vncserver :1 -geometry 1280x800 -depth 24
/usr/share/novnc/utils/novnc_proxy --vnc localhost:5901 --listen 8080
