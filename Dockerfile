FROM accetto/ubuntu-vnc-xfce

# Auto login tanpa password
ENV VNC_PW=""

# Optional: tambahkan software
RUN apt update && apt install -y firefox
