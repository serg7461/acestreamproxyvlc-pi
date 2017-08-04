FROM multiarch/debian-debootstrap:armhf-stretch

RUN DEBIAN_FRONTEND=noninteractive apt-get update -y && DEBIAN_FRONTEND=noninteractive apt-get full-upgrade -y 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y wget unzip ca-certificates
RUN adduser --disabled-password --gecos "" tv
RUN cd / && wget https://github.com/sestus/acestream-openelec/archive/master.zip -O acestream_rpi.zip && unzip acestream_rpi.zip && rm acestream_rpi.zip && cp -avr /acestream-openelec-master/acestream /acestream && rm -rf /acestream-openelec-master 
EXPOSE 62062
ENTRYPOINT ["/acestream/start_acestream.sh"]
