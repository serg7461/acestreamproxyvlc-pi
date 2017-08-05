# Set the base image to use to armhf
FROM multiarch/debian-debootstrap:armhf-stretch

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && DEBIAN_FRONTEND=noninteractive apt-get -y full-upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install git unzip python-gevent python-pip python-dev gcc && pip install psutil && DEBIAN_FRONTEND=noninteractive apt-get -y remove gcc python-pip python-dev && DEBIAN_FRONTEND=noninteractive apt-get -y autoremove && DEBIAN_FRONTEND=noninteractive apt-get -y clean
RUN cd / && git clone https://github.com/AndreyPavlenko/aceproxy.git
RUN adduser --disabled-password --gecos "" aceproxy
EXPOSE 8000 8081 
VOLUME /aceproxy/ 
ADD aceconfig.py /aceproxy/aceconfig.py
USER aceproxy
CMD ["/aceproxy/acehttp.py"]
