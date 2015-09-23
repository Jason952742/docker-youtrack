# YouTrack的Docker镜像

包含JetBrains [YouTrack](http://www.jetbrains.com/youtrack)的Docker镜像。

## 用法

1、Fork项目，通过github构建镜像。
2、创建容器。
3、运行应用。

YouTrack启动后在容器中侦听80端口（映射主机端口到80）。

YouTrack将数据和备份保存到容器的 /root/teamsysdata 和 /root/teamsysdata-backup 。如果你想要重用数据, 需要为这二个路径映射volume。如:

docker run --name="youtrack" -v /path/on/host/teamsysdata:/root/teamsysdata -v /path/on/host/teamsysdata-backup:/root/teamsysdata-backup