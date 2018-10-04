#!/bin/bash

set -e

rabbitmq-plugins --offline enable rabbitmq_management
sleep 2s
rabbitmq-plugins --offline enable rabbitmq_peer_discovery_consul
sleep 2s
rabbitmq-plugins enable rabbitmq_consistent_hash_exchange
sleep 2s
# Iniciar rabbitmq
rabbitmq-server