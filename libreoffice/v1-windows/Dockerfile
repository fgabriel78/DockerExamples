FROM microsoft/windowsservercore
MAINTAINER Aytos Soluciones Informáticas
LABEL Description="LibreOffice" Vendor="The Document Foundation" Version="5.4.3"

ENV LIBREOFFICE_VERSION 5.4.3
ENV LIBREOFFICE_URL https://download.documentfoundation.org/libreoffice/stable/${LIBREOFFICE_VERSION}/win/x86_64/LibreOffice_${LIBREOFFICE_VERSION}_Win_x64.msi

RUN mkdir C:\LibreOffice
WORKDIR /LibreOffice

COPY libreoffice.bat libreoffice.bat

RUN powershell -Command \
	$ErrorActionPreference = 'Stop'; \	
	Invoke-WebRequest -Method Get -Uri %LIBREOFFICE_URL%  -OutFile c:\LibreOffice.msi ; \
	Start-Process c:\LibreOffice.msi -ArgumentList '/qr /msoreg=0 ADDLOCAL=ALL CREATEDESKTOPLINKE=0 REGISTER_ALL_SMO_TYPES=1 REGISTER_DOC=1 INSTALLLOCATION=c:\LibreOffice REMOVE=gm_o_Onlineupdate,gm_p_Base,gm_p_Base_Bin,gm_o_Xsltfiltersamples RebootYesNo=No' -Wait ; \	
	Remove-Item c:\LibreOffice.msi -Force
		
EXPOSE 8101

CMD  "C:\LibreOffice\libreoffice.bat" 
	


