FROM ubuntu
MAINTAINER MEMPAGE-TECHNOLOGY
RUN apt-get update -y
RUN apt install openjdk-11-jdk -y && apt install wget -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
RUN wget http://dlcdn.apache.org/tomcat/tomcat-9/v9.0.72/bin/apache-tomcat-9.0.72.tar.gz
RUN tar -zxvf apache-tomcat-9.0.72.tar.gz
CMD ["/opt/tomcat/apache-tomcat-9.0.72/bin/catalina.sh","run"]
