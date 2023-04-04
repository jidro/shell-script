# Steamcommunity 302 For SteamDeck 安装教程

Posted on 2022年11月1日 by [羽翼城|Dogfight360](https://www.dogfight360.com/blog/author/wu360463231/ "文章作者 羽翼城|Dogfight360") [Linux](https://www.dogfight360.com/blog/category/linux/)

1.在Windows系统下载[steamcommunity 302](https://www.dogfight360.com/blog/686/) (于版本V12.1.11开始支持)

2.运行.进入设置  
**打勾所需的选项**  
**将证书期限修改为1年(必须!)**
**保存设置**

<img src=".images/image-14.png" title="" alt="" data-align="center">

**3.启动服务**

<img src=".images/image-1.png" title="" alt="" data-align="center">

**4.进入设置->[导出SteamDeck版本一键安装脚本]**

<img src=".images/image-2.png" title="" alt="" data-align="center">

**导出后将自动弹出目录,文件列表如下图(若无弹出手动进入[302目录\SteamDeck_302])**

<img src=".images/image-1-0.png" title="" alt="" data-align="center">

**5.SteamDeck进入桌面模式  
进入方法: 按下设备左下角STEAM**实体**按钮,弹出菜单->电源->切换至桌面** (如下图)

<img src=".images/image-4.png" title="" alt="" data-align="center">

<img src=".images/image-5.png" title="" alt="" data-align="center">

**6.进入桌面模式.将前面生成的SteamDeck_302目录拷贝到桌面(不折腾的话建议直接U盘复制)**

**7.双击SteamDeck_302目录.进入目录**

<img src=".images/image-6.png" title="" alt="" data-align="center">

**8.确定当前位置在SteamDeck_302目录,右上角[菜单->Open Terminal] 打开终端**

<img src=".images/image-7.png" title="" alt="" data-align="center">

**注意:后面操作需要用到root密码,若没有设置过可以在终端输入passwd来设置**  
**已经设置过请略过该步骤!** 

根据提示输入两次密码回车即可(密码输入时无任何字符提示,输后回车确认即可!)

<img src=".images/image-9.png" title="" alt="" data-align="center">

**8.5.使用STEAM+X呼出虚拟键盘 (实体键盘推荐,虚拟键盘实在是难用BUG还多)**

**9.打开终端后,输入**

```shell
sh install.sh
```

**回车,来执行脚本**

**10.执行脚本后输入root密码(前面passwd设置的),回车 来安装**

<img src=".images/image-10.png" title="" alt="" data-align="center">

<img src=".images/image-11.png" title="" alt="" data-align="center">

**安装顺利没报错的话如上图**

已知问题:  
~~1.开启”Steam商店 锁区解锁”时,无法正常加载摇杆操作的商店网页,~~ 已在12.1.14修复  
2.开启Github时部分应用无法正常访问(例如ProtonUp-qt),其他多数情况(终端及游戏模式下)是正常的.

------

原文来自：

[羽翼城个人博客 - Steamcommunity 302 For SteamDeck 安装教程](https://www.dogfight360.com/blog/10327/)
