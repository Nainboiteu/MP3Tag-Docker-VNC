FROM ghcr.io/linuxserver/baseimage-kasmvnc:ubuntujammy
RUN apt update
RUN apt install -y git wine
RUN mkdir /data
RUN git clone https://github.com/Nainboiteu/MP3Tag-Docker-VNC /app
RUN CHMOD 777 -R /app
RUN mkdir -p /root/defaults
RUN mv /app/bin/autostart root/defaults/autostart
#RUN echo "wine /app/bin/mp3tag-3.21/Mp3tag.exe" > /usr/local/sbin/startMP3tag
#RUN chmod +x /usr/local/sbin/startMP3tag
#RUN echo "wine /app/bin/mp3tag-3.21/Mp3tag.exe" > root/defaults/autostart
#RUN echo "startMP3tag" > root/defaults/autostart

