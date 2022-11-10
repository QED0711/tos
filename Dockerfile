from azul/zulu-openjdk-debian:11-latest

RUN apt-get update && apt-get install -y \
    wget \
    gconf2 \
	libnotify4 \
	libnss3 \
	libappindicator1 \
	libxss1 \
	libasound2

RUN wget https://mediaserver.thinkorswim.com/installer/InstFiles/thinkorswim_installer.sh
RUN chmod +x thinkorswim_installer.sh

RUN sh -c 'echo "1\ro\r1\r1\r1\r\ry\rn\ry\r" | ./thinkorswim_installer.sh'
RUN /root/thinkorswim/thinkorswim

CMD /bin/bash