FROM ubuntu:16.04
MAINTAINER Gabriel Munoz

RUN \
	echo "===> Anadiendo el repositorio de Java 8..."  && \
	echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list  && \
	echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list  && \
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886  && \
	apt-get update  && \
	\
	\
	echo "===> Instalando Java 8"  && \
	echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections  && \
	echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections  && \
	DEBIAN_FRONTEND=noninteractive  apt-get install -y --force-yes oracle-java8-installer oracle-java8-set-default  && \
	apt-get upgrade -y && \
	\
	\
	echo "===> Limpiando ..."  && \
	rm -rf /var/cache/oracle-jdk8-installer  && \
	apt-get clean  && \
	rm -rf /var/lib/apt/lists/*

CMD ["java"]



