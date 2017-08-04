# Set the base image to use to armhf
FROM multiarch/debian-debootstrap:armhf-stretch

# Upgrade system and install vlc-nox
RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && DEBIAN_FRONTEND=noninteractive apt-get -y full-upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install vlc-nox python-gevent python-pip python-dev gcc && DEBIAN_FRONTEND=noninteractive apt-get -y autoremove && DEBIAN_FRONTEND=noninteractive apt-get -y clean
RUN adduser --disabled-password --gecos "" aceproxy
EXPOSE 4212 8011
USER aceproxy
ENV VLC_PLUGIN_PATH /usr/lib/vlc/plugins/

ENTRYPOINT ["/usr/bin/vlc"]
