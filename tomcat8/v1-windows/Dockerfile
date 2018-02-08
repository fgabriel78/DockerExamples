FROM aytos/java8:v1-windows
MAINTAINER Aytos Soluciones Informáticas
LABEL Description="Tomcat" Vendor="Apache" Version="8.0.47"

ENV TOMCAT_MAJOR 8
ENV TOMCAT_VERSION 8.0.47
ENV TOMCAT_ZIP_URL http://ftp.cixug.es/apache/tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION-windows-x64.zip

RUN setx /M JAVA_HOME "C:\Program Files\Java\jdk1.8.0_151"
RUN setx /M CATALINA_HOME "C:\apache-tomcat"

RUN powershell -Command \
	$ErrorActionPreference = 'Stop'; \
	Invoke-WebRequest -Method Get -Uri %TOMCAT_ZIP_URL% -OutFile c:\tomcat.zip ; \
	Expand-Archive -Path c:\tomcat.zip -DestinationPath c:\ ; \
	Remove-Item c:\tomcat.zip -Force ; \
	Rename-Item c:\apache-tomcat-8.0.47 c:\apache-tomcat

WORKDIR /apache-tomcat

EXPOSE 8080

CMD ["/apache-tomcat/bin/catalina.bat" ,"run"]