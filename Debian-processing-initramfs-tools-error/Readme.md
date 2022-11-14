# 处理软件包 `initramfs-tools` 出错问题

## 问题描述：

```shell
dpkg: 处理软件包 initramfs-tools (–configure)时出错：
已安装 initramfs-tools 软件包 post-installation 脚本 子进程返回错误状态 1
在处理时有错误发生：
initramfs-tools
E: Sub-process /usr/bin/dpkg returned an error code (1)
```

## 解决办法：

### 知识点积累

`/var/lib/dpkg/info`文件夹用于保存各软件包的配置文件列表，</br>
`dpkg`是`Debian`的中级软件包管理器，类似于`RPM`。
`dpkg`是`Debian`软件包管理系统的中流砥柱，负责安全卸载软件包，配置，以及维护已安装的软件包.

### 解决问题的命令

- ① 将原有的`info`文件夹更名为`info_old`。
  
  ```shell
  $ sudo mv -v /var/lib/dpkg/info /var/lib/dpkg/info_old
  ```

- ② 新建一个新的名为`info`的文件夹。
  
  ```shell
  $ sudo mkdir -pv /var/lib/dpkg/info 
  ```

- ③ 更新索引。
  
  ```shell
  $ sudo apt-get update
  ```

- ④ 修复依赖关系
  
  > 即假若系统上有某个软件不满足依赖条件，该命令可自动修复依赖。
  
  ```shell
  $ sudo apt-get -f install 
  ```

- ⑤ 将新生成的`info`文件夹内的文件全部移到`info_old`文件夹内。
  
  ```shell
  $ sudo mv -v /var/lib/dpkg/info/* /var/lib/dpkg/info_old 
  ```

- ⑥ 删除新建的`info`文件夹。
  
  ```shell
  $ sudo rm -rfv /var/lib/dpkg/info -f 
  ```

- ⑦ 将`info_old`文件夹更名为`info`。
  
  ```shell
  $ sudo mv -v /var/lib/dpkg/info_old /var/lib/dpkg/info 
  ```

- ⑧ 再次索引或修复依赖关系，查看是否已修复`initramfs-tools` 出错问题。
  
  ```shell
  $ sudo apt-get update
  $ sudo apt-get upgrade
  $ sudo apt-get install -f
  ```