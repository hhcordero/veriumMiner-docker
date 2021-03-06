FROM armv7/armhf-ubuntu:16.04
LABEL maintainer="Hector Cordero <https://github.com/hhcordero>"
LABEL Name="veriumMiner"
LABEL Version="1"

RUN set -x \
    && BUILD_DEPS="automake autoconf ca-certificates pkg-config libssl-dev libgmp-dev zlib1g-dev g++ git" \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get --no-install-recommends install -y libcurl4-openssl-dev libjansson-dev $BUILD_DEPS \
    && git clone https://github.com/fireworm71/veriumMiner \
    && cd veriumMiner \
    && ./build.sh \
    && apt-get -y --auto-remove purge $BUILD_DEPS \
    && rm -fr /var/lib/apt-/lists/*

ENTRYPOINT  ["/veriumMiner/cpuminer"]
