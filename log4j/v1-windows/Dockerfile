FROM aytos/java8:v1-windows
MAINTAINER Aytos Soluciones Informáticas
LABEL Description="Log4j" Vendor="Apache" Version="1.0.27"

ENV LOG4J_URL http://apache.rediris.es/logging/log4j/1.2.17/log4j-1.2.17.zip

RUN setx /M JAVA_HOME "C:\Program Files\Java\jdk1.8.0_151"

RUN powershell -Command \
	$ErrorActionPreference = 'Stop'; \
	Invoke-WebRequest -Method Get -Uri %LOG4J_URL% -OutFile c:\log4j.zip ; \
	Expand-Archive -Path c:\log4j.zip -DestinationPath c:\ ; \
	Remove-Item c:\log4j.zip -Force ; \
	Rename-Item c:\apache-log4j-1.2.17 c:\apache-log4j
	

WORKDIR /apache-log4j

RUN mkdir c:\apache-log4j\conf
RUN mkdir c:\apache-log4j\logs

#COPY log4j-server.properties /apache-log4j/conf/log4j-server.properties

EXPOSE 4712

CMD java -classpath log4j-1.2.17.jar org.apache.log4j.net.SimpleSocketServer 4712 conf\log4j-server.properties