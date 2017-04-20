@echo off
C:\LibreOffice\program\soffice --nologo --norestore --invisible --headless --accept='socket,host=0,port=8101,tcpNoDelay=1;urp;'
ping -t localhost