FROM migueltanada/centos-java:8

MAINTAINER BATMAN

RUN mkdir -p /apps/fitnesse

WORKDIR /apps/fitnesse

EXPOSE 8080

VOLUME /apps/fitnesse/

COPY Resources/fitnesse-standalone.jar /apps/fitnesse/

CMD java -jar fitnesse-standalone.jar -p 8080
