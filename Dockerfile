FROM migueltanada/centos-java:8

MAINTAINER BATMAN

RUN mkdir -p /opt/fitnesse

WORKDIR /opt/fitnesse

EXPOSE 8080

VOLUME /opt/fitnesse/

COPY Resources/. /opt/fitnesse/

ENTRYPOINT ["/opt/fitnesse/entrypoint.sh"]
