FROM shoothzj/base:jdk8

ENV FLINK_HOME /opt/flink

RUN wget https://archive.apache.org/dist/flink/flink-1.12.7/flink-1.12.7-bin-scala_2.11.tgz  && \
mkdir -p /opt/flink && \
tar -xf flink-1.12.7-bin-scala_2.11.tgz -C /opt/flink --strip-components 1 && \
rm -rf flink-1.12.7-bin-scala_2.11.tgz

WORKDIR /opt/flink
