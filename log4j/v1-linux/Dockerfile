FROM aytos/java8:v1-linux
MAINTAINER Aytos Soluciones Informáticas

ENV LOG4J_URL http://apache.rediris.es/logging/log4j/1.2.17/log4j-1.2.17.tar.gz
WORKDIR $CATALINA_HOME

# Instala la utilidad CURL necesaria para descargar archivos
RUN \
	echo	"===> Instalando curl..."  && \	
	apt-get update && \
	apt-get install -y curl && \
	apt-get clean  

# Instala Apache Log4j
RUN \
	echo	"===> Instalando Logj4..."  && \
	set -x \
	&& curl -fSL "$LOG4J_URL" -o log4j.tar.gz \	
	&& tar -xvf log4j.tar.gz --strip-components=1 \
	&& rm log4j.tar.gz* \
	&& mv apache-log4j-1.2.17 /usr/local/apache-log4j
	
	
WORKDIR /usr/local/apache-log4j

RUN mkdir /usr/local/apache-log4j/conf
RUN mkdir /usr/local/apache-log4j/logs

COPY log4j-server.properties /usr/local/apache-log4j/conf/log4j-server.properties

EXPOSE 4712

CMD java -classpath log4j-1.2.17.jar org.apache.log4j.net.SimpleSocketServer 4712 conf\log4j-server.properties

