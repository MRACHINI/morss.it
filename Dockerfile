# set version label
#ARG --cap-add=NET_ADMIN
#ARG --cap-add=SYS_MODULE
#ARG --sysctl="net.ipv4.conf.all.src_valid_mark=1"
#ARG --sysctl="net.ipv4.ip_forward=1"
#ARG --restart unless-stopped

#ARG --net=host

FROM rustdesk/rustdesk-server-s6:latest

ENV RELAY=rustdeskrelay.example.com
ENV ENCRYPTED_ONLY=1

#RUN

# add local files
#COPY /root /

# ports and volumes
EXPOSE 21115/tcp
EXPOSE 21116/tcp
EXPOSE 21116/udp
EXPOSE 21117/tcp
EXPOSE 21118/tcp
EXPOSE 21119/tcp

VOLUME $PWD/data
VOLUME $PWD/data:/data
