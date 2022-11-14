# `Shell`-`Script`

## 中文说明：

该仓库是之前学习`Bash shell`时自己写的一些小脚本。    </br>

该脚本文件大多仅适用于`Debian`及其衍生系统使用，    </br>

受限于当时的环境，仅接触过`Debian`及其衍生系统，    </br>

当然，该脚本文件仅仅是本人作为初学者所写，定有多数不足，亦请各位指出。    </br>

> 其中，    </br>
> 
> [`Add_Raspberry_Pi_image_source`](https://github.com/jidro/shell-script/tree/master/Add_Raspberry_Pi_image_source "Add_Raspberry_Pi_image_source") - 该脚本文件为`Debian`及其衍生系统自动添加树莓派镜像源的脚本文件，该文件夹中的`install.sh`为官方镜像、`china-install.sh`为清华开源镜像站所提供的镜像支持。    </br>
> 
> [`AppStore_Install_and_Uninstall_Scripts`](https://github.com/jidro/shell-script/tree/master/AppStore_Install_and_Uninstall_Scripts "AppStore_Install_and_Uninstall_Scripts") - 该脚本文件为`Linux`系统中的应用商店（`snap`/`flatpak`/……）的自动安装脚本。     </br>
> 
> [`Configure_Python_image`](https://github.com/jidro/shell-script/tree/master/Configure_Python_image "Configure_Python_image") - 该脚本文件为`Linux`系统中自动将`Python`官方镜像切换为华为开源镜像站所提供的镜像支持。    </br>
> 
> [`Debian-processing-initramfs-tools-error`](https://github.com/jidro/shell-script/tree/master/Debian-processing-initramfs-tools-error "Debian-processing-initramfs-tools-error") - 该脚本为`Debian`及其衍生系统自动处理软件包 `initramfs-tools` 出错问题的方案，具体处理方法见[这里](./Debian-processing-initramfs-tools-error/Readme.md)。    </br>
> 
> [`Debian_Configuration_Switch_Animation`](https://github.com/jidro/shell-script/tree/master/Debian_Configuration_Switch_Animation "Debian_Configuration_Switch_Animation") - 该脚本为`Debian`及其衍生系统使用`Plymouth`软件自动配置开机动画。    </br>
> 
> [`Flash_Player-installer`](https://github.com/jidro/shell-script/tree/master/Flash_Player-installer "Flash_Player-installer") - 该脚本为支持`Flash`插件的`Chrome`浏览器与`Firefox`浏览器自动安装`Flash`插件的`shell`脚本文件。使用该脚本文件之前需要提前到`Flash Player`官网下载适用于`Linux`的`flash`插件文件。     </br>
> 
> [`HomeBrew`](https://github.com/jidro/shell-script/tree/master/HomeBrew "HomeBrew") - 该脚本为`Linux`中自动安装与卸载`HomeBrew`软件安装管理工具。    </br>
> 
> [`Imitation_hacker_end_point_emulator-eDEX-UI`](https://github.com/jidro/shell-script/tree/master/Imitation_hacker_end_point_emulator-eDEX-UI "Imitation_hacker_end_point_emulator-eDEX-UI") - 该脚本文件为`Debian`及其衍生系统自动安装`eDEX-UI`软件（由才华横溢的声音设计师制作的可选音效，可实现最佳的好莱坞黑客氛围的支持`curses`和类似`curses`的功能强劲实用完全支持触摸屏的全屏、跨平台、可定制的终端模拟器）。    </br>
> 
> [`Linux_installation_input_method`](https://github.com/jidro/shell-script/tree/master/Linux_installation_input_method "Linux_installation_input_method") - 该脚本文件为`Debian`及其衍生操作系统自动安装`fcitx`输入法。    </br>
> 
> [`Update_and_clean_up_scripts`](https://github.com/jidro/shell-script/tree/master/Update_and_clean_up_scripts "Update_and_clean_up_scripts") - 该脚本为本人学习后编写的`Debian`及其衍生操作系统的自动更新与清理垃圾。【待完善中……】    </br>
> 
> [`Windows-fonts`](https://github.com/jidro/shell-script/tree/master/Windows-fonts "Windows-fonts") - 该脚本为本人学习后编写的`Debian`及其衍生操作系统的字体自动安装脚本。虽然名字[`Windows-fonts`](https://github.com/jidro/shell-script/tree/master/Windows-fonts "Windows-fonts")，但是若想真正在`Linux`中安装`Windows`自带字体，请先提取`Windows`系统中的字体，并放置在该文件夹下。    </br>
> 
> [`oh-my-fish`](https://github.com/jidro/shell-script/tree/master/oh-my-fish "oh-my-fish") - 该脚本为`Debian`及其衍生系统自动安装`fish shell`的插件管理工具[`oh-my-fish`](https://github.com/jidro/shell-script/tree/master/oh-my-fish "oh-my-fish")。    </br>
> 
> [`oh-my-zsh`](https://github.com/jidro/shell-script/tree/master/oh-my-zsh "oh-my-zsh") - 该脚本为`Debian`及其衍生系统自动安装`zsh`的插件管理工具[`oh-my-zsh`](https://github.com/jidro/shell-script/tree/master/oh-my-zsh "oh-my-zsh")。    </br>
> 
> [`steam`](https://github.com/jidro/shell-script/tree/master/steam "steam") - 该脚本为`Debian`及其衍生系统自动添加`steam`软件源，并自动安装`steam`软件。    </br>

- 请仔细阅读脚本内容，若发现没有问题，再进行安装。    </br>

### 已知问题：

- `Debian`系统中添加树莓派镜像，会导致`LXDE`桌面环境任务栏显示不全。    </br>

- `Debian`系统中添加树莓派镜像，会导致`LXDE`桌面环境`Orca`屏幕阅读器开机自启。    </br>

- `Debian`系统中添加树莓派镜像，会导致`LXDE`桌面环境`Orca`屏幕阅读器吐字不清晰。    </br>

> **注意：**    </br>
> 
> 该脚本可能会因为时间久远而导致无法安装成功，    </br>
> 
> 或者，有可能会损坏系统文件，    </br>
> 
> 因此，请谨慎使用。

------

## English description：

This repository is a shell script file that I contacted and wrote when I taught myself shell scripting.    </br>
All scripts in this repository have not been tested and there is no guarantee of any problems, please use with caution.    </br>

This warehouse is some small scripts that I wrote when I learned `Bash shell`    </br>
Most of the script files are only applicable to `Debian` and its derivative systems    </br>
Limited by the environment at that time, I have only been exposed to `Debian` and its derivative systems    </br>
Of course, this script file is only written by myself as a beginner, and there must be many shortcomings, please also point out    </br>

> Among them,    </br>
> 
> [`Add_Raspberry_Pi_image_source`](https://github.com/jidro/shell-script/tree/master/Add_Raspberry_Pi_image_source "Add_Raspberry_Pi_image_source") - This script file is a script file for automatically adding raspberry pie image source to `Debian` and its derivative systems. The `install. sh` in this folder is the official image, and `china-install.sh` is the image support provided by Tsinghua open-source image station.    </br>
> 
> [`AppStore_Install_and_Uninstall_Scripts`](https://github.com/jidro/shell-script/tree/master/AppStore_Install_and_Uninstall_Scripts "AppStore_Install_and_Uninstall_Scripts") - This script file is the automatic installation script of the application store (` snap `/` flatpak `/...) in the ` Linux ` system.    </br>
> 
> [`Configure_Python_image`](https://github.com/jidro/shell-script/tree/master/Configure_Python_image "Configure_Python_image") - This script file is used to automatically switch the official image of `Python` to the image support provided by Huawei open-source image station in the `Linux` system.    </br>
> 
> [`Debian-processing-initramfs-tools-error`](https://github.com/jidro/shell-script/tree/master/Debian-processing-initramfs-tools-error "Debian-processing-initramfs-tools-error") - This script is a solution for `Debian` and its derivative systems to automatically handle errors in the software package `initramfs tools`,See [here](./Debian-processing-initramfs-tools-error/Readme.md) for specific handling methods。    </br>
> 
> [`Debian_Configuration_Switch_Animation`](https://github.com/jidro/shell-script/tree/master/Debian_Configuration_Switch_Animation "Debian_Configuration_Switch_Animation") - This script uses the `Plymouth` software to automatically configure the boot animation for `Debian` and its derivative systems.    </br>
> 
> [`Flash_Player-installer`](https://github.com/jidro/shell-script/tree/master/Flash_Player-installer "Flash_Player-installer") - This script is a `shell` script file for the `Chrome` browser and the `Firefox` browser that support the `Flash` plug-in to automatically install the `Flash` plug-in. Before using the script file, you need to go to the official website of the Flash Player to download the `flash` plug-in file for `Linux`.    </br>
> 
> [`HomeBrew`](https://github.com/jidro/shell-script/tree/master/HomeBrew "HomeBrew") - This script is a software installation management tool for automatic installation and uninstallation of `HomeBrew` in `Linux`.    </br>
> 
> [`Imitation_hacker_end_point_emulator-eDEX-UI`](https://github.com/jidro/shell-script/tree/master/Imitation_hacker_end_point_emulator-eDEX-UI "Imitation_hacker_end_point_emulator-eDEX-UI") - This script file automatically installs` eDEX UI `software for` Debian `and its derivative systems (the optional sound effects produced by talented sound designers can achieve the best Hollywood hacker atmosphere to support` curses` and similar `curses` functions, which are powerful, practical, full screen, cross platform, and customizable terminal simulators that fully support the touch screen).    </br>
> 
> [`Linux_installation_input_method`](https://github.com/jidro/shell-script/tree/master/Linux_installation_input_method "Linux_installation_input_method") - This script file automatically installs the `fcitx` input method for `Debian` and its derivative operating systems.    </br>
> 
> [`Update_and_clean_up_scripts`](https://github.com/jidro/shell-script/tree/master/Update_and_clean_up_scripts "Update_and_clean_up_scripts") - This script is used to automatically update and clean up the garbage of `Debian` and its derivative operating systems that I wrote after learning.【To be improved……】    </br>
> 
> [`Windows-fonts`](https://github.com/jidro/shell-script/tree/master/Windows-fonts "Windows-fonts") - This script is an automatic font installation script for `Debian` and its derivative operating systems that I wrote after learning.Although the name is [`Windows-fonts`](https://github.com/jidro/shell-script/tree/master/Windows-fonts "Windows-fonts"), if you want to actually install the fonts in Windows in Linux, please first extract the fonts in Windows and place them in this folder.    </br>
> 
> [`oh-my-fish`](https://github.com/jidro/shell-script/tree/master/oh-my-fish "oh-my-fish") - This script automatically installs the plug-in management tool [`oh-my-fish`](https://github.com/jidro/shell-script/tree/master/oh-my-fish "oh-my-fish") of `fish shell` for `Debian` and its derivatives.    </br>
> 
> [`oh-my-zsh`](https://github.com/jidro/shell-script/tree/master/oh-my-zsh "oh-my-zsh") - This script automatically installs the plug-in management tool [`oh-my-zsh`](https://github.com/jidro/shell-script/tree/master/oh-my-zsh "oh-my-zsh") of  `zsh`  for ` Debian` and its derivatives.    </br>
> 
> [`steam`](https://github.com/jidro/shell-script/tree/master/steam "steam") - This script automatically adds the `steam` software source for `Debian` and its derivative systems, and automatically installs the `steam` software.    </br>

- Please read the script carefully. If no problem is found, install it again.    </br>

### Known problems：

- Adding a raspberry pie image to the `Debian` system will result in incomplete display of the `LXDE` desktop environment taskbar.    </br>

- Adding a raspberry pie image to the `Debian` system will cause the `LXDE` desktop environment `Orca` screen reader to boot automatically.    </br>

- Adding a raspberry pie image to the `Debian` system will cause the `LXDE` desktop environment `Orca` screen reader to spell illegibly.    </br>

> **Note：**    </br>
> The script may not be installed successfully due to long time    </br>
> Or, it may damage system files    </br>
> Therefore, please use with caution.
