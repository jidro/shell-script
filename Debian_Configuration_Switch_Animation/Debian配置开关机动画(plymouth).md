# Debian Linux 配置开关机动画 plymouth 使用教程

## 一些小知识：

* `Plymouth`：本次所使用的开机动画程序。

* `Bootsplash`:第一款开机动画程序，目前已经被Splashy取代。

* `fbsplash`:为了取代`bootsplash`，Gentoo开发的新开机动画程序。

* `Splashy`:新的开机动画程序，以取代老化的`bootsplash`开机动画程序。

* `usplash`:ubuntu之前早期使用的开机动画程序。

* `XSplash`:Ubuntu9.10开始使用的开机动画程序。
  
  -----

## 安装 plymouth

`sudo apt-get install plymouth plymouth-themes`

## 修改 grub

> 编辑：`/etc/default/grub`

```bash
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
```

## 更新 grub

`sudo update-grub`    
`sudo update-grub2`

## 设置显卡

> 编辑：`/etc/initramfs-tools/modules`

### 适用于英特尔显卡：

```shell
# KMSintel_agp
drm
i915 modeset=1
```

### 适用于 Nvidia

```shell
# KMSdrm
nouveau modeset=1
```

### 适用于ATI图形卡

```shell
# KMSdrm
radeon modeset=1
```

## 选择动画主题

$ `sudo plymouth-set-default-theme  -l`

> > futureprototype    
> > details    
> > fade-in    
> > futureprototype    
> > glow    
> > joylines    
> > moonlight    
> > script    
> > softwaves    
> > solar    
> > spacefun    
> > spinfinity    
> > spinnertext    
> > tribar    

## 使用主题

$ `sudo plymouth-set-default-theme  -R moonlight`

## 如果遇到报错

```powershell
W: Possible missing firmware /lib/firmware/i915/kbl_dmc_ver1_01.bin for module i915
W: Possible missing firmware /lib/firmware/i915/kbl_guc_ver9_14.bin for module i915
W: Possible missing firmware /lib/firmware/i915/bxt_guc_ver8_7.bin for module i915
```

### 创建相关目录：

#### 英特尔显卡：

`mkdir -p /lib/firmware/i915/`

去[官网](https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/i915)下载缺失的固件到创建的目录中

#### ATI图形卡：

```bash
mkdir -p /lib/firmware/radeon/
```

去[官网](https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/tree/radeon)下载缺失的固件到创建的目录中
