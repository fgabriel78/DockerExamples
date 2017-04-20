FROM aytos/java8:v1-windows
MAINTAINER Aytos Soluciones Informáticas
LABEL Description="Tomcat" Vendor="Apache" Version="8.0.42"

ENV TOMCAT_MAJOR 8
ENV TOMCAT_VERSION 8.0.43
ENV TOMCAT_ZIP_URL http://ftp.cixug.es/apache/tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.zip

RUN setx /M JAVA_HOME "C:\Program Files\Java\jdk1.8.0_121"
RUN setx /M CATALINA_HOME "C:\apache-tomcat-8.0.43"

RUN powershell -Command \
	$ErrorActionPreference = 'Stop'; \
	Invoke-WebRequest -Method Get -Uri %TOMCAT_ZIP_URL% -OutFile c:\tomcat.zip ; \
	Expand-Archive -Path c:\tomcat.zip -DestinationPath c:\ ; \
	Remove-Item c:\tomcat.zip -Force
	
WORKDIR /apache-tomcat-8.0.43

EXPOSE 8080

CMD c:\apache-tomcat-8.0.43\bin\startup.bat