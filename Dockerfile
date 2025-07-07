FROM ubuntu:22.04

LABEL maintainer="sebastiansemua"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    xfce4 xfce4-goodies \
    tigervnc-standalone-server \
    novnc websockify \
    python3-websockify \
    wget curl sudo xterm \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash user && echo "user:user" | chpasswd && adduser user sudo

USER user
WORKDIR /home/user

RUN mkdir -p ~/.vnc \
 && echo "vncpass\nvncpass\nn" | vncpasswd

RUN echo "#!/bin/bash\nxrdb $HOME/.Xresources\nstartxfce4 &" > ~/.vnc/xstartup \
 && chmod +x ~/.vnc/xstartup

USER root

COPY startup.sh /startup.sh
RUN chmod +x /startup.sh

EXPOSE 8080

CMD ["/startup.sh"]
