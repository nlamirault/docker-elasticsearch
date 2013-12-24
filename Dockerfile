FROM tianon/debian:latest

RUN apt-get update
RUN apt-get -y dist-upgrade

#elasticsearch dependencies
RUN apt-get install -y openjdk-7-jre
RUN apt-get install -y adduser
RUN apt-get install -y sudo

#elasticsearch install
ADD files /
RUN dpkg -i /elasticsearch*.deb

#clean image
RUN apt-get clean

EXPOSE 9200

CMD ["/elasticsearch"]
