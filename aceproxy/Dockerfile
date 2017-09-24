FROM multiarch/debian-debootstrap:armhf-stretch

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && DEBIAN_FRONTEND=noninteractive apt-get -y full-upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install wget unzip ca-certificates python-gevent python-pip python-dev gcc && pip install psutil && DEBIAN_FRONTEND=noninteractive apt-get -y remove gcc python-pip python-dev && DEBIAN_FRONTEND=noninteractive apt-get -y autoremove && DEBIAN_FRONTEND=noninteractive apt-get -y clean

ARG REPO_PROFILE=AndreyPavlenko
ARG REPO_NAME=aceproxy
ARG REPO_REVISION=58e25bc4defda6955fdaee5dc99239bf4f0a480d

RUN cd / && wget https://github.com/${REPO_PROFILE}/${REPO_NAME}/archive/${REPO_REVISION}.zip -O archive.zip && unzip archive.zip && rm archive.zip && cp -avr /${REPO_NAME}-${REPO_REVISION} /aceproxy && rm -rf /${REPO_NAME}-${REPO_REVISION}

RUN adduser --disabled-password --gecos "" aceproxy
EXPOSE 8000 8081 
VOLUME /aceproxy/ 
ADD aceconfig.py /aceproxy/aceconfig.py
USER aceproxy
CMD ["/aceproxy/acehttp.py"]
