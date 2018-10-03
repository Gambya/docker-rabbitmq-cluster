FROM rabbitmq:3-management

RUN rabbitmq-plugins --offline enable rabbitmq_management
RUN rabbitmq-plugins --offline enable rabbitmq_peer_discovery_consul

RUN rabbitmq-plugins list

CMD ["rabbitmq-server"]
