@color a0
@title 去除系统快捷方式箭头
@echo 将要去除系统快捷方式箭头
@pause
@echo Windows Registry Editor Version 5.00>>1.reg
@echo [HKEY_CLASSES_ROOT\lnkfile]>>1.reg
@echo "IsShortcut"=->>1.reg
@echo [HKEY_CLASSES_ROOT\piffile]>>1.reg
@echo "IsShortcut"=->>1.reg
@echo [HKEY_CLASSES_ROOT\InternetShortcut]>>1.reg
@echo "IsShortcut"=->>1.reg
@echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\InternetShortcut]>>1.reg
@echo "IsShortcut"=->>1.reg
regedit/s 1.reg
del 1.reg
@echo 5秒钟后将关闭显示桌面进程,请不必惊慌,稍后会重新开启
ping localhost -n 5
taskkill /f /im Explorer.exe
@echo 正在开启显示桌面,系统快捷方式箭头已清除
ping localhost -n 8
start "explorer.exe" "%windir%\explorer.exe"
@pause

