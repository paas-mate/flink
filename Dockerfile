FROM ttbb/base:jdk11

ARG version=1.17.1
ARG download=1.17.1-bin-scala_2.12

ENV FLINK_HOME /opt/flink

RUN wget https://downloads.apache.org/flink/flink-$version/flink-$download.tgz  && \
mkdir -p /opt/flink && \
tar -xf flink-$download.tgz -C /opt/flink --strip-components 1 && \
rm -rf flink-$download.tgz

WORKDIR /opt/flink
