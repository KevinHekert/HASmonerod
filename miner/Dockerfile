#FROM homeassistant/amd64-base:latest

ARG BUILD_FROM
FROM $BUILD_FROM


RUN apk --no-cache upgrade
RUN apk add --no-cache git make cmake libstdc++ gcc g++ libuv-dev openssl-dev hwloc-dev
RUN git clone https://github.com/xmrig/xmrig
RUN mkdir xmrig/build
RUN cd xmrig/build
WORKDIR /xmrig/build
COPY run.sh /xmrig/build/run.sh
RUN chmod +x /xmrig/build/run.sh
RUN cmake ..
RUN make -j$(nproc)
RUN apk del cmake git
LABEL \
  io.hass.version="VERSION" \
  io.hass.type="addon" \
  io.hass.arch="amd64"
CMD ["/xmrig/build/run.sh"]