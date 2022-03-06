# 启动zookeeper
/opt/zookeeper/bin/zkServer.sh start /opt/zookeeper/conf/zoo.cfg
# 启动kafka服务
/opt/kafka/bin/kafka-server-start.sh config/server.properties
# 创建kafka主题
/opt/kafka/bin/kafka-topics.sh --create --partitions 1 --replication-factor 1 --topic quickstart-events --bootstrap-server localhost:9092
# kafka生产
/opt/kafka/bin/kafka-console-producer.sh --topic quickstart-events --bootstrap-server localhost:9092
# kafka消费
/opt/kafka/bin/kafka-console-consumer.sh --topic quickstart-events --from-beginning --bootstrap-server localhost:9092