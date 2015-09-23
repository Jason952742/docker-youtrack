# YouTrack的Docker镜像

包含JetBrains [YouTrack](http://www.jetbrains.com/youtrack)的Docker镜像。

## 用法

1、Fork项目，通过github构建镜像。
2、创建容器。
3、运行应用。

YouTrack启动后在容器中侦听80端口（映射主机端口到80）。

YouTrack将数据和备份通过volume映射到主机的"/opt/youtrack/data/"和"/opt/youtrack/backup/"。
