FROM microsoft/windowsservercore
MAINTAINER Aytos Soluciones Informáticas
LABEL Description="Redis" Vendor="MSOpenTech" Version="3.2"

RUN powershell -Command \
	$ErrorActionPreference = 'Stop'; \
	Invoke-WebRequest -Method Get -Uri https://github.com/ServiceStack/redis-windows/raw/master/downloads/redis-latest.zip -OutFile c:\redis.zip ; \
	Expand-Archive -Path c:\redis.zip -DestinationPath c:\redis ; \
	Remove-Item c:\redis.zip -Force

WORKDIR /redis

EXPOSE 6379

CMD redis-server.exe