ARG REV=524245386a444bda1b34ffac5c0a9401daa04a16
FROM multiarch/debian-debootstrap:armhf-stretch

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && DEBIAN_FRONTEND=noninteractive apt-get -y full-upgrade 
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install wget unzip ca-certificates
RUN cd / && wget https://github.com/sestus/acestream-openelec/archive/${REV}.zip -O acestream_rpi.zip && unzip acestream_rpi.zip && rm acestream_rpi.zip && cp -avr /acestream-openelec-${REV}/acestream /acestream && rm -rf /acestream-openelec-${REV}
EXPOSE 62062
ENTRYPOINT ["/acestream/start_acestream.sh"]
