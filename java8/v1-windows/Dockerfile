FROM microsoft/windowsservercore
MAINTAINER Aytos Soluciones Informáticas
LABEL Description="JDK 8u151" Vendor="Oracle" Version="1.8.151"


#COPY descargajava.ps1 c:\descargajava.ps1
COPY jdk-8u151-windows-x64.exe C:/jdk8u151.exe

#RUN powershell -Command \
#	$ErrorActionPreference = 'Stop'; \	
#	Start-Process descargajava.ps1
	
RUN powershell -Command \
	$ErrorActionPreference = 'Stop'; \	
	Start-Process C:\jdk8u151.exe -ArgumentList '/s ADDLOCAL="ToolsFeature,SourceFeature,PublicjreFeature"' -Wait ; \
	Remove-Item c:\jdk8u151.exe -Force

CMD ["java"]