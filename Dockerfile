FROM debian:stable-slim

ENV SIA_VERSION=1.0.4
ENV SIA_PKG=Sia-v$SIA_VERSION-lts-linux-amd64

RUN apt-get update && \
    apt-get install -y unzip curl && \
    curl -OL https://github.com/NebulousLabs/Sia/releases/download/lts-v$SIA_VERSION/$SIA_PKG.zip && \
    unzip $SIA_PKG.zip && \
    mv $SIA_PKG/siad /usr/bin && \
    mv $SIA_PKG/siac /usr/bin && \
    apt-get autoremove --purge -y unzip curl && \
    rm -r /var/cache/apt/* $SIA_PKG*

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
