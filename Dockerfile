FROM ubuntu

RUN \
useradd -ms /bin/bash user && \
echo "user:user"|chpasswd && \
adduser user sudo && \
apt update && apt upgrade -y && \
apt install -y ssh sudo

COPY files/ngrok-v3-stable-linux-amd64.tgz /home/user
RUN tar xvzf /home/user/ngrok-v3-stable-linux-amd64.tgz -C /usr/local/bin && rm /home/user/ngrok-v3-stable-linux-amd64.tgz

COPY files/sshd_config /etc/ssh/sshd_config
COPY files/do /home/user
COPY files/ngrok.yml /home/user
RUN apt install vim qrencode -y
COPY files/id_rsa.pub /home/user/.ssh/authorized_keys
COPY entry.sh /root
RUN chmod u+x /root/entry.sh
ENTRYPOINT /root/entry.sh
