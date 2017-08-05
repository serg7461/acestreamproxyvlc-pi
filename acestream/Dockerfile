FROM multiarch/debian-debootstrap:armhf-stretch

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && DEBIAN_FRONTEND=noninteractive apt-get -y full-upgrade 
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install wget unzip ca-certificates
RUN adduser --disabled-password --gecos "" acestream
RUN cd / && wget https://github.com/sestus/acestream-openelec/archive/master.zip -O acestream_rpi.zip && unzip acestream_rpi.zip && rm acestream_rpi.zip && cp -avr /acestream-openelec-master/acestream /acestream && rm -rf /acestream-openelec-master 
EXPOSE 62062
USER acestream
ENTRYPOINT ["/acestream/start_acestream.sh"]
