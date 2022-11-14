# `Linux`输入法安装方法

- ① 通过命令行安装`fcitx`

```shell
sudo apt-get install fcitx
```

- ② 通过命令行安装`aptitude`

```shell
sudo apt-get install aptitude
```

- ③ 通过命令行利用`aptitude` 安装`fcitx`、`qt`

```shell
sudo aptitude install fcitx-bin fcitx-table fcitx-config-gtk fcitx-config-gtk2 fcitx-frontend-all
sudo aptitude install qt5-default qtcreator qml-module-qtquick-controls2
```

- ④ 如果右上角没有出现`fcitx`，在终端中输入`im-config`进行配置

- ⑤ 重启完成即可使用
  
  （若没有，需在右上角`fcitx`配置中添加）
  
  （`Ubuntu`作为例子）
