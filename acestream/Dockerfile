FROM resin/rpi-raspbian:jessie
RUN apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y wget  unzip ca-certificates
RUN adduser --disabled-password --gecos "" tv
RUN cd / && wget https://github.com/sestus/acestream-openelec/archive/master.zip -O acestream_rpi.zip && unzip acestream_rpi.zip
RUN cp /acestream-openelec-master/acestream/ /acestream && rm -rf /acestream-openelec-master && rm acestream_rpi.zip
EXPOSE 62062
ENTRYPOINT ["/acestream/start_acestream.sh"]
