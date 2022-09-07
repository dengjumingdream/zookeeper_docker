#!/bin/bash

echo "===执行start.sh"
# source /etc/profile

/opt/zookeeper/apache-zookeeper-3.7.1/bin/zkServer.sh start /opt/zookeeper/node1/zoo.cfg
/opt/zookeeper/apache-zookeeper-3.7.1/bin/zkServer.sh start /opt/zookeeper/node2/zoo.cfg
/opt/zookeeper/apache-zookeeper-3.7.1/bin/zkServer.sh start /opt/zookeeper/node3/zoo.cfg

# tail -f anaconda-post.log