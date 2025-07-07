FROM dorowu/ubuntu-desktop-lxde-vnc

LABEL maintainer="sebastiansemua"

# Hapus password agar auto login
RUN sed -i 's/^PASSWORD=.*$/PASSWORD=/' /startup.sh
