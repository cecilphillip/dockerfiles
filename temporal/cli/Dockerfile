FROM debian:bookworm

ARG SERVICE_PORT=7233
ENV SERVICE_PORT=${SERVICE_PORT}

RUN apt update -yq &&\ 
    apt upgrade -yq &&\
    apt install wget -yq

WORKDIR /temporal

RUN wget -O temporalcli.tar.gz https://temporal.download/cli/archive/latest\?platform\=linux\&arch=amd64 &&\
    tar -xzvf temporalcli.tar.gz && rm temporalcli.tar.gz 

CMD ./temporal server start-dev --ip 0.0.0.0 --port $SERVICE_PORT