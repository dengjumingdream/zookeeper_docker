# 构建节点1
FROM openjdk:8 as Node1

WORKDIR /Users/admin/Desktop/Moon_joy_project/kafka

ARG zookeeper_path=/opt/zookeeper
ARG zookeeper_file_name=apache-zookeeper-3.7.1.tar.gz
ARG zookeeper_folder_name=apache-zookeeper-3.7.1

# 处理 zookeeper
RUN mkdir -p $zookeeper_path
COPY ./lib/$zookeeper_file_name $zookeeper_path
RUN tar -zxvf $zookeeper_path/$zookeeper_file_name

# 设置zoo.cfg
COPY ./config/zoo1.cfg /opt/zookeeper/node1/zoo.cfg
COPY ./config/zoo2.cfg /opt/zookeeper/node2/zoo.cfg
COPY ./config/zoo3.cfg /opt/zookeeper/node3/zoo.cfg

# 启动命令
COPY ./tools/start.sh $zookeeper_path

# WORKDIR $zookeeper_path

# ENTRYPOINT [ "/opt/zookeeper/start.sh" ]