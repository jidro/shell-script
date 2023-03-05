# Repair `Windows` system files.bat

## 中文说明：

该文件用于检测并修复`Windows`系统损坏文件。

**请以管理员身份运行**

### 内容说明：

- `chkdsk` - 命令`chkdsk`用于检查文件系统的完整性并修复发现的任何错误。
  它还可以用来检查硬盘驱动器中的坏扇区和其他错误。

- `Dism /online /cleanup-image /restorehealth` - 命令`Dism /online /cleanup-image /restorehealth`用于修复`Windows`系统映像、对操作系统执行扫描和修复操作以及还原损坏的系统文件。

- `SFC /scannow` - 命令`SFC /scannow`用于扫描和修复`Windows`上的系统文件。
  它可以帮助修复损坏的文件、解决系统错误和恢复丢失的组件。

## English Description：

This file is used to detect and repair corrupt files on the `Windows` system.

**Please run as administrator**

### Content Description:

- `chkdsk` - The command `chkdsk` is used to check the integrity of the file system and repair any errors found. It can also be used to check hard drive for bad sectors and other errors.

- `Dism /online /cleanup-image /restorehealth` - The command `Dism /online /cleanup-image /restorehealth` is used to repair Windows system image, perform scan and repair operations for the operating system, and restore corrupted system files.

- `SFC /scannow` - The command `SFC /scannow` is used to scan and repair system files on Windows. It can help fix corrupt files, resolve system errors, and restore missing components.