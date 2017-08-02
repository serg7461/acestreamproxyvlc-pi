FROM resin/rpi-raspbian:jessie
RUN apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y wget  unzip ca-certificates
RUN adduser --disabled-password --gecos "" tv
RUN cd / && wget https://github.com/sestus/acestream-openelec/archive/master.zip -O acestream_rpi.tar.gz && unzip acestream_rpi.tar.gz
EXPOSE 62062
ENTRYPOINT ["/acestream/start_acestream.sh"]
