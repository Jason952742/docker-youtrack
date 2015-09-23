# YouTrack的Docker镜像

包含JetBrains [YouTrack](http://www.jetbrains.com/youtrack)的Docker镜像。

## 用法

1、Fork项目，通过github构建镜像。
2、创建容器。
3、运行应用。

YouTrack 开始在容器中侦听80端口（要映射主机端口到80）

### 额外设置

YouTrack将数据和备份保存到容器的 ```/root/teamsysdata``` 和 ```/root/teamsysdata-backup``` 。如果你想要重用数据, 要设置这二个路径的volume映射。
