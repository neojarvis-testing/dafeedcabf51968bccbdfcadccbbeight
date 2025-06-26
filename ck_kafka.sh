#!/bin/bash
echo "🔍 Checking Kafka..."

/opt/kafka/bin/zookeeper-server-start.sh -daemon /opt/kafka/config/zookeeper.properties
/opt/kafka/bin/kafka-server-start.sh -daemon /opt/kafka/config/server.properties

# Create a test topic
/opt/kafka/bin/kafka-topics.sh --create --topic test-topic --bootstrap-server localhost:9092 --partitions 1 --replication-factor 1 \
  || echo "⚠️ Topic might already exist"

# List topics
/opt/kafka/bin/kafka-topics.sh --list --bootstrap-server localhost:9092

# Web UI
echo "[ℹ️] Kafka has no default Web UI. You can use Kafka Manager if needed."
