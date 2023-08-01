FROM ghcr.io/linuxserver/baseimage-kasmvnc:ubuntujammy
RUN apt update
RUN apt install wine64 wget nano
RUN mkdir /app /app/bin /data
RUN cd /app/bin
RUN wget https://download.mp3tag.de/mp3tagv321-x64-setup.exe
CMD ["wine", "mp3tagv321-x64-setup.exe"]
