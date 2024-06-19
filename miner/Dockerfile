FROM homeassistant/amd64-base:latest
RUN apk --no-cache upgrade
RUN apk add --no-cache git make cmake libstdc++ gcc g++ libuv-dev openssl-dev hwloc-dev
RUN git clone https://github.com/xmrig/xmrig
RUN mkdir xmrig/build
RUN cd xmrig/build
WORKDIR /xmrig/build
COPY run.sh /xmrig/build/run.sh
RUN chmod +x /xmrig/build/run.sh
#RUN cmake ..
#RUN make -j$(nproc)
#RUN apk del cmake git
LABEL \
  io.hass.version="VERSION" \
  io.hass.type="addon" \
  io.hass.arch="amd64"
ENTRYPOINT ["/bin/bash"]
CMD ["/xmrig/build/run.sh"]
#ENTRYPOINT  ["./xmrig"]
#CMD ["-o", "pool.supportxmr.com:3333", "-u", "44v1W3BG3uYdiRc86DgWMxABv8YrgY4zn6tQ36npJjUDcY6FvegqPgbDftGQwXd6cYb3N9K51jLk1NEzutpkrBXq5DxgUrD", "-k"]