# from azul/zulu-openjdk-debian:11-latest
FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -q update && apt-get install -yq \
    wget \
	gnupg \
	curl \
    gconf2 \
	libnotify4 \
	libnss3 \
	libappindicator1 \
	libxss1 \
	libasound2

# Azul Setup
RUN apt-key adv \
  --keyserver hkp://keyserver.ubuntu.com:80 \
  --recv-keys 0xB1998361219BD9C9

RUN curl -O https://cdn.azul.com/zulu/bin/zulu-repo_1.0.0-3_all.deb
RUN apt-get install ./zulu-repo_1.0.0-3_all.deb
RUN apt-get update

RUN apt-get install -y zulu11-jdk

# TOS Installation
RUN wget https://mediaserver.thinkorswim.com/installer/InstFiles/thinkorswim_installer.sh
RUN chmod +x thinkorswim_installer.sh

RUN sh -c 'echo "1\ro\r1\r1\r1\r\ry\rn\ry\r" | ./thinkorswim_installer.sh'
RUN /root/thinkorswim/thinkorswim
COPY ./tos.sh /tos.sh

CMD ["/tos.sh"]