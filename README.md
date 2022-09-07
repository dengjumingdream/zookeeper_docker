### 命令大全
-i：交互式操作
-t：终端

## 镜像操作
# 获取镜像
docker pull censor:latest

# 查找镜像
docker search nginx

# 删除镜像
docker rmi nginx

# 构建镜像 (通过Dockerfile)
docker build -t kafka:v1 .
-t: 指定要创建的目标镜像名
.: Dockerfile 文件所在目录，可以指定Dockerfile 的绝对路径

# 启动容器
docker run -d -p 5000:5000 zookeeper:v1

docker run -d -p 2181:2181 -p 2182:2182 -p 2183:2183  zookeeper:v1 /opt/apps/zookeeper/bin/start.sh

# 查看容器启动日志
docker logs 32da44a66a60

# 删除容器
docker rm <containerID>