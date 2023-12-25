FROM ubuntu
#MAINTAINER Pythonlife
RUN apt-get update && apt-get -y install openjdk-11-jdk-headless
COPY target/mavendemo-0.0.1-SNAPSHOT.jar /opt/app.jar
WORKDIR /opt
CMD ["java", "-jar","app.jar"]