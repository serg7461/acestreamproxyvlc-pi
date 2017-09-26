# Set the base image to use to armhf
FROM multiarch/debian-debootstrap:armhf-stretch

# Upgrade system and install vlc-nox
RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && DEBIAN_FRONTEND=noninteractive apt-get -y full-upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install vlc-nox && DEBIAN_FRONTEND=noninteractive apt-get -y autoremove && DEBIAN_FRONTEND=noninteractive apt-get -y clean
RUN adduser --disabled-password --gecos "" aceproxy
EXPOSE 4212 8011
USER aceproxy
ENTRYPOINT ["/usr/bin/vlc"]
