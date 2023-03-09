# docker run -d -p 15672:15672 -p 5672:5672 --name name --hostname name
FROM rabbitmq:3.11-management
COPY ["rabbitmq_enabled_plugins", "/etc/rabbitmq/enabled_plugins/"]
CMD ["rabbitmq-server"]