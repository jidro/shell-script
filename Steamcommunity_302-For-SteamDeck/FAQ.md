## 常见问题:

### 出现无法预料的故障,导致无法登录进入游戏模式如何解决?

参考上面进入桌面模式的方法(不登陆,在输入密码界面时可以相同操作进入桌面模式)  
进入后参考下方”如何卸载?”步骤进行卸载即可

### 桌面模式下`STEAM`+`X`无法呼出虚拟键盘

桌面模式下需要在登录`Steam`后(托盘出现`Steam`图标)后才可以呼出虚拟键盘  
建议用实体键盘更方便

### 如何卸载?

安装后会在目录下生成`uninstall.sh`  
进入终端,执行  

```shell
sh uninstall.sh  
```

输入`root`密码回车.即可完成卸载

### `302`部分功能在`SteamDeck`下不可用

**以下功能无法在`SteamDeck`版本使用,生成安装文件时会自动过滤.无需手动取消操作**

- `Origin` 游戏下载(`Akamai`)  
- `Uplay` 客户端更新防劫持  
- 微软商店/`XBOX` 图片修复  
- `CSGO Demo`下载 国区转国际  
- `Uplay`下载`CDN`重定向  
- 图奇(仅掉宝功能不可用,其他正常)

### 覆盖安装后出现证书错误

先卸载后再安装!

### 火狐访问社区时提示连接不安全

**访问`about:preferences#privacy` 拉到最底部**

![](.images/image-22.png)

![](.images/image-23.png)

**导入时选择证书文件”`steamcommunityCA.pem`”**

### 安装后`hosts`文件被覆盖?

安装时`hosts`会被覆盖,旧文件会备份在`/etc`目录下  
终端执行  

```shell
ls -la /etc/hosts.backup.*  
```

来查看所有已备份的`hosts`文件  
需要写入其他`hosts`建议在安装后再追加!

------

**原文来源：**

[羽翼城个人博客 - Steamcommunity 302 For SteamDeck 安装教程](https://www.dogfight360.com/blog/10327/)
