FROM microsoft/windowsservercore
MAINTAINER Aytos Soluciones Informáticas
LABEL Description="JDK 8u121" Vendor="Oracle" Version="1.8.121"

COPY jdk-8u121-windows-x64.exe C:\jdk8u121.exe

RUN powershell -Command \
	$ErrorActionPreference = 'Stop'; \	
	Start-Process c:\jdk8u121.exe -ArgumentList '/s ADDLOCAL="ToolsFeature,SourceFeature,PublicjreFeature"' -Wait ; \
	Remove-Item c:\jdk8u121.exe -Force

CMD ["java"]