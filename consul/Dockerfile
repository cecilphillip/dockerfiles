FROM consul:1.7.2

RUN mkdir -p /etc/consul.d

CMD ["agent", "-dev", "-ui", "-client", "0.0.0.0", \
    "-bind", "0.0.0.0", "-config-dir", "/etc/consul.d", \
    "-enable-local-script-checks"]