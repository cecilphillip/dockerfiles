# ActiveMQ 5 broker image running on OpenJDK 13

FROM openjdk:13-slim-buster

ENV ACTIVEMQ_VERSION=5.15.11 \
    ACTIVEMQ_TCP=61616 \
    ACTIVEMQ_AMQP=5672 \
    ACTIVEMQ_STOMP=61613 \
    ACTIVEMQ_MQTT=1883 \
    ACTIVEMQ_WS=61614 \
    ACTIVEMQ_UI=8161

ENV ACTIVEMQ_HOME=/activemq/apache-activemq-${ACTIVEMQ_VERSION}
ENV PATH=${ACTIVEMQ_HOME}/bin:$PATH

WORKDIR /activemq

RUN apt update -qy && apt install wget -qy && \
    wget http://archive.apache.org/dist/activemq/${ACTIVEMQ_VERSION}/apache-activemq-${ACTIVEMQ_VERSION}-bin.tar.gz && \
    tar zxvf apache-activemq-${ACTIVEMQ_VERSION}-bin.tar.gz && rm apache-activemq-${ACTIVEMQ_VERSION}-bin.tar.gz

EXPOSE 1883 5672 61616 61613 61614 8161

ENTRYPOINT ["activemq"]
CMD ["console"]
