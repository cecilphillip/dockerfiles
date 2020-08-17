FROM consul:1.8.3

RUN mkdir -p /etc/consul.d
COPY consul.server.json /etc/consul.d/
CMD ["agent", "-dev", "-config-dir", "/etc/consul.d"]