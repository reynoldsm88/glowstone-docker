FROM ubuntu:18.04


RUN mkdir /opt/glowstone && \
	apt update && \
	apt upgrade


RUN apt install -y ca-certificates-java && \
	apt install -y openjdk-17-jre && \
	apt-get --purge remove -y openjdk-11-jre-headless && \
	apt-get clean


COPY ./distro/glowstone.jar /opt/glowstone

WORKDIR /opt/glowstone

RUN nohup java -jar glowstone.jar --generate-config

ENTRYPOINT /bin/bash
