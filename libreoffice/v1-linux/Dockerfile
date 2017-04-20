FROM ubuntu:16.04
MAINTAINER Aytos Soluciones Informáticas
# Basado en https://bitbucket.org/xcgd/libreoffice

ENV DEBIAN_FRONTEND noninteractive

RUN \
	echo "===> Instalando LibreOffice"  && \
	apt-get update && apt-get -y -q install apt-utils libreoffice libreoffice-writer ure libreoffice-java-common libreoffice-core libreoffice-common fonts-opensymbol hyphen-fr hyphen-de hyphen-en-us hyphen-es fonts-dejavu fonts-dejavu-core fonts-dejavu-extra fonts-dustin fonts-f500 fonts-fanwood fonts-freefont-ttf fonts-liberation fonts-lmodern fonts-lyx fonts-sil-gentium fonts-texgyre fonts-tlwg-purisa && \
	apt-get -q -y remove libreoffice-gnome && \
	\
	\
	echo "===> Limpiando ..."  && \
	apt-get clean  && \
	rm -rf /var/lib/apt/lists/*
	

EXPOSE 8101

RUN adduser --home=/opt/libreoffice --disabled-password --gecos "" --shell=/bin/bash libreoffice

# replace default setup with a one disabling logos by default
ADD sofficerc /etc/libreoffice/sofficerc
ADD startoo.sh /opt/libreoffice/startoo.sh
VOLUME ["/tmp"]
RUN chmod +x /opt/libreoffice/startoo.sh

ENTRYPOINT ["/opt/libreoffice/startoo.sh"]
