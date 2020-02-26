# ActiveMQ Artemis broker image running on OpenJDK 13

FROM openjdk:13-slim-buster

ENV ARTEMIS_VERSION=2.11.0
ENV ARTEMIS_HOME=/artemis/apache-artemis-${ARTEMIS_VERSION}
ENV PATH=${ARTEMIS_HOME}/bin:$PATH

# Morpheus is the Greek God of Dreams that delivers messages to mortals from the Gods
ENV BROKER_NAME=morpheus

ENV ARTEMIS_USER=admin \
    ARTEMIS_PASSWORD=admin \
    ANONYMOUS_LOGIN=false

ENV CREATE_ARGUMENTS --user ${ARTEMIS_USER} --password ${ARTEMIS_PASSWORD} \
    --name ${BROKER_NAME}} --silent --http-host 0.0.0.0  \
    --relax-jolokia --require-login

WORKDIR /artemis

RUN apt update -qy && apt install wget -qy  --no-install-recommends && \
    wget https://archive.apache.org/dist/activemq/activemq-artemis/${ARTEMIS_VERSION}/apache-artemis-${ARTEMIS_VERSION}-bin.tar.gz && \
    tar zxvf apache-artemis-${ARTEMIS_VERSION}-bin.tar.gz && rm apache-artemis-${ARTEMIS_VERSION}-bin.tar.gz

WORKDIR /var/lib/brokers/${BROKER_NAME}

RUN artemis create ${CREATE_ARGUMENTS} .

# Ports for Web Server, MQTT, AMQP, HORNETQ, STOMP, OPENWIRE
EXPOSE 8161 9404 61616 5445 5672 1883 61613

ENTRYPOINT ["./bin/artemis"]
CMD ["run"]