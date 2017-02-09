FROM migueltanada/centos-java:8

MAINTAINER BATMAN

RUN mkdir -p /opt/fitnesse

WORKDIR /opt/fitnesse

EXPOSE 8080

VOLUME /opt/fitnesse/

COPY Resources/. /opt/fitnesse/

#CMD java -jar fitnesse-standalone.jar -b base.properties -a passwords.txt
ENTRYPOINT ["/opt/fitnesse/entrypoint.sh"]
