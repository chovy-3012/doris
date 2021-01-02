# Doris

当前分支版本0.12.x

0.12.x版本官方不在维护，线上基于这个版本，在使用过程中遇到一些问题，继续维护该分支。

## Compile

doris使用java、c++、node等语言编写，在本地编译需要安装很多库，比较麻烦，使用官方的docker进行编译。

```shell
docker run --name doris-build -it \
-v /your_path_xxxx/incubator-doris:/root/incubator-doris/ \
-v /your_m2_path_xxxx/.m2/:/root/.m2 \
apachedoris/doris-dev:build-env-1.2
```

进入容器之后执行

```shell
cd incubator-doris
./mybuild.sh
```

## Run with docker

### build image

```shell
cd my-script
./build-all {version}
example: ./build-all 0.12-10
```



### run

- fe

```
docker run --name doris-fe \
-v /your_doris_path/fe/conf:/doris/fe/conf -v /your_doris_path/fe/log:/doris/fe/log \
-v /your_data_path/doris/fe/doris-meta:/doris/fe/doris-meta \
-e TZ=``"Asia/Shanghai"` `--net host -d --restart unless-stopped -m 8G --cpus ``8` `doris:``0.12` `fe
```

- be

```
docker run --name doris-be \
-v /your_doris_path/be/conf:/doris/be/conf -v /your_doris_path/be/log:/doris/be/log \
-v /your_data_path/doris/be:/data13/doris/be -v /data14/doris/be:/data14/doris/be \
-e TZ=``"Asia/Shanghai"` `--net host -d --restart unless-stopped -m 32G --cpus ``32` `doris:``0.12` `be
```

- broker

```
docker run --name doris-broker \
-v /your_doris_path/broker/conf:/doris/broker/conf -v /your_doris_path/broker/log:/doris/broker/log \
-e TZ=``"Asia/Shanghai"` `--net host -d --restart unless-stopped -m 2G --cpus ``2` `doris:``0.12` `broker
```

## Changelog

| 时间       | 问题                           | 开源版本修复 |
| ---------- | ------------------------------ | ---- |
| 2021-01-02 | 修复brokerload 内存泄漏问题    | 0.13.x       |
| 2020-12-07 | 修复没有帮助文档的问题         | 0.13.x       |
| 2020-10-20 | 修复fe管理超时连接线程安全问题 | 0.13.x |



