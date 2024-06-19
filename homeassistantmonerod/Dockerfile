FROM homeassistant/amd64-base-debian:buster
ENV MONERO_V=0.18.3.3

# Update and upgrade the system
RUN apt-get update && apt-get upgrade -y

# Install required dependencies
RUN apt-get install -y wget tar bzip2

# Download the current Monero Core binaries
RUN mkdir -p /monero
WORKDIR /monero

RUN wget https://downloads.getmonero.org/cli/linux64 -O monero.tar.bz2

# Make a directory for Monero and extract the files
RUN tar -xjvf monero.tar.bz2 --strip-components=1 -C /monero

COPY monerod.conf /etc/monero/monerod.conf
COPY run.sh /usr/local/bin/run.sh

# Expose port 18080
EXPOSE 18080
EXPOSE 18081

#CMD bash
ENTRYPOINT ["/bin/bash"]
#ENTRYPOINT ["tail", "-f", "/dev/null"]

CMD ["/usr/local/bin/run.sh"]
