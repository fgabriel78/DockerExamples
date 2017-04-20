FROM aytos/java8:v1-windows
MAINTAINER Aytos Soluciones Informáticas

LABEL Description="Elasticsearch" Vendor="Elastic" Version="1.6.2"

RUN powershell -Command \
	$ErrorActionPreference = 'Stop'; \
	Invoke-WebRequest -Method Get -Uri https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.6.2.zip -OutFile c:\elasticsearch.zip ; \
	Expand-Archive -Path c:\elasticsearch.zip -DestinationPath c:\ ; \
	Remove-Item c:\elasticsearch.zip -Force

WORKDIR /elasticsearch-1.6.2
RUN setx /M JAVA_HOME "C:\Program Files\Java\jdk1.8.0_121"
VOLUME  c:/elasticsearch-1.6.2/data

EXPOSE 9200 9300

CMD ["elasticsearch"]

CMD c:\elasticsearch-1.6.2\bin\elasticsearch.bat