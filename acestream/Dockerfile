
FROM multiarch/debian-debootstrap:armhf-stretch

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && DEBIAN_FRONTEND=noninteractive apt-get -y full-upgrade 
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install wget unzip ca-certificates

ARG REPO_PROFILE=sestus
ARG REPO_NAME=acestream-openelec
ARG REPO_REVISION=3f411a48e863de153f1b397cb15b6bf614f3135d

RUN cd / && wget https://github.com/${REPO_PROFILE}/${REPO_NAME}/archive/${REPO_REVISION}.zip -O archive.zip && unzip archive.zip && rm archive.zip && cp -avr /${REPO_NAME}-${REPO_REVISION}/acestream /acestream && rm -rf /${REPO_NAME}-${REPO_REVISION}
EXPOSE 62062
ENTRYPOINT ["/acestream/start_acestream.sh"]
