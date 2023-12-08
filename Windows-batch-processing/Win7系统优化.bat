@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c ""%~s0"" ::","","runas",0)(window.close)>nul 2>nul&&exit
>>"%Temp%\Reg2Temp.reg" echo Windows Registry Editor Version 5.00
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;==============系统设置==============
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;我的电脑右键增强菜单
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\DevMgr]
>>"%Temp%\Reg2Temp.reg" echo ;@=hex(2):40,00,25,00,77,00,69,00,6e,00,64,00,69,00,72,00,25,00,5c,00,73,00,79,\
>>"%Temp%\Reg2Temp.reg" echo ;  00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,64,00,65,00,76,00,6d,00,67,00,\
>>"%Temp%\Reg2Temp.reg" echo ;  72,00,2e,00,64,00,6c,00,6c,00,2c,00,2d,00,34,00,00,00
>>"%Temp%\Reg2Temp.reg" echo @="设备管理器"
>>"%Temp%\Reg2Temp.reg" echo "SuppressionPolicy"=dword:4000003c
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\DevMgr\command]
>>"%Temp%\Reg2Temp.reg" echo @=hex(2):25,00,77,00,69,00,6e,00,64,00,69,00,72,00,25,00,5c,00,73,00,79,00,73,\
>>"%Temp%\Reg2Temp.reg" echo   00,74,00,65,00,6d,00,33,00,32,00,5c,00,6d,00,6d,00,63,00,2e,00,65,00,78,00,\
>>"%Temp%\Reg2Temp.reg" echo   65,00,20,00,2f,00,73,00,20,00,25,00,77,00,69,00,6e,00,64,00,69,00,72,00,25,\
>>"%Temp%\Reg2Temp.reg" echo   00,5c,00,73,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,64,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   76,00,6d,00,67,00,6d,00,74,00,2e,00,6d,00,73,00,63,00,00,00
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo 设置平铺
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams]
>>"%Temp%\Reg2Temp.reg" echo "Settings"=hex(3):08,00,00,00,06,00,00,00,01,00,00,00,E5,25,F1,65,E1,7B,10,\
>>"%Temp%\Reg2Temp.reg" echo 48,BA,9D,D2,71,C8,43,2C,E3,04,00,00,00,04,00,00,00,43,00,00,00
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams\Defaults]
>>"%Temp%\Reg2Temp.reg" echo "{20D04FE0-3AEA-1069-A2D8-08002B30309D}"=hex(3):1C,00,00,00,06,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo 00,00,00,00,00,9A,00,00,00,00,00,01,00,00,00,FF,FF,FF,FF,F0,F0,F0,F0,14,00,\
>>"%Temp%\Reg2Temp.reg" echo 03,00,9A,00,00,00,00,00,00,00,30,00,00,00,FD,DF,DF,FD,0F,00,05,00,24,00,10,\
>>"%Temp%\Reg2Temp.reg" echo 00,2E,00,46,00,00,00,00,00,01,00,00,00,02,00,00,00,03,00,00,00,04,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo 78,00,96,00,60,00,60,00,78,00,00,00,00,00,01,00,00,00,02,00,00,00,03,00,00,\
>>"%Temp%\Reg2Temp.reg" echo 00,05,00,00,00,FF,FF,FF,FF,CF,F3,A8,B0,33,43,AB,4B,88,73,1C,CB,1C,AD,A4,8B,\
>>"%Temp%\Reg2Temp.reg" echo 30,F1,25,B7,EF,47,1A,10,A5,F1,02,60,8C,9E,EB,AC,04,00,00,00
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\*\shell\runas] 
>>"%Temp%\Reg2Temp.reg" echo @="管理员取得所有权" 
>>"%Temp%\Reg2Temp.reg" echo "NoWorkingDirectory"="" 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\*\shell\runas\command] 
>>"%Temp%\Reg2Temp.reg" echo @="cmd.exe /c takeown /f \"%1\" & icacls \"%1\" /grant administrators:F" 
>>"%Temp%\Reg2Temp.reg" echo "IsolatedCommand"="cmd.exe /c takeown /f \"%1\" & icacls \"%1\" /grant administrators:F" 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\exefile\shell\runas2] 
>>"%Temp%\Reg2Temp.reg" echo @="管理员取得所有权" 
>>"%Temp%\Reg2Temp.reg" echo "NoWorkingDirectory"="" 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\exefile\shell\runas2\command] 
>>"%Temp%\Reg2Temp.reg" echo @="cmd.exe /c takeown /f \"%1\" & icacls \"%1\" /grant administrators:F" 
>>"%Temp%\Reg2Temp.reg" echo "IsolatedCommand"="cmd.exe /c takeown /f \"%1\" & icacls \"%1\" /grant administrators:F" 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\Directory\shell\runas] 
>>"%Temp%\Reg2Temp.reg" echo @="管理员取得所有权" 
>>"%Temp%\Reg2Temp.reg" echo "NoWorkingDirectory"="" 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\Directory\shell\runas\command] 
>>"%Temp%\Reg2Temp.reg" echo @="cmd.exe /c takeown /f \"%1\" /r /d y & icacls \"%1\" /grant administrators:F /t" 
>>"%Temp%\Reg2Temp.reg" echo "IsolatedCommand"="cmd.exe /c takeown /f \"%1\" /r /d y & icacls \"%1\" /grant administrators:F /t"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]
>>"%Temp%\Reg2Temp.reg" echo "Start_ShowPrinters"=dword:00000001     ;"打印机和传真"-显示为链接 
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;右键加上在此处打开命令提示符
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Folder\shell\OpenDOSBox]
>>"%Temp%\Reg2Temp.reg" echo @="在此处打开命令提示符"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Folder\shell\OpenDOSBox\Command]
>>"%Temp%\Reg2Temp.reg" echo @="CMD.EXE /K CD %1"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation]
>>"%Temp%\Reg2Temp.reg" echo "Manufacturer"="深度完美论坛：52sdjk.com "
>>"%Temp%\Reg2Temp.reg" echo "Model"="（专业的软件资源下载与电脑技术交流网站）"
>>"%Temp%\Reg2Temp.reg" echo "SupportURL"="http://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "SupportPhone"="备用网址：52Sdjk.cn"
>>"%Temp%\Reg2Temp.reg" echo "SupportHours"=" QQ:420298427  634066211"
>>"%Temp%\Reg2Temp.reg" echo "Logo"="C:\\Windows\\System32\\oemlogo.bmp"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;7.取消运行程序前安全警告
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Associations]
>>"%Temp%\Reg2Temp.reg" echo "ModRiskFileTypes"=".bat;.exe;.reg;.vbs" 
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;右键菜单中加上记事本打开项
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\*\shell\Notepad]
>>"%Temp%\Reg2Temp.reg" echo @="用记事本打开该文件"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\*\shell\Notepad\Command]
>>"%Temp%\Reg2Temp.reg" echo @="notepad %1"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;DLL文件右键加上(反)注册菜单
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\dllfile\shell\RegServer]
>>"%Temp%\Reg2Temp.reg" echo @="注册 Dll"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\dllfile\shell\RegServer\command]
>>"%Temp%\Reg2Temp.reg" echo @="regsvr32.exe \"%1\""
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\dllfile\shell\UnregRegServer]
>>"%Temp%\Reg2Temp.reg" echo @="反注册 Dll"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\dllfile\shell\UnregRegServer\command]
>>"%Temp%\Reg2Temp.reg" echo @="regsvr32.exe /u \"%1\""
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;OCX文件右键加上(反)注册菜单
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\ocxfile\shell]
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\ocxfile\shell\Reg]
>>"%Temp%\Reg2Temp.reg" echo @="Register OCX"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\ocxfile\shell\Reg\Command]
>>"%Temp%\Reg2Temp.reg" echo @="regsvr32 %1"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\ocxfile\shell\UnReg]
>>"%Temp%\Reg2Temp.reg" echo @="UnRegister OCX"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\ocxfile\shell\UnReg\Command]
>>"%Temp%\Reg2Temp.reg" echo @="regsvr32 /u %1"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;禁止U盘等所有磁盘自动运行(仅保留光盘自动播放)
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "NoDriveTypeAutoRun"=dword:000000DD
>>"%Temp%\Reg2Temp.reg" echo "NolowDiskSpaceChecks"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\USBSTOR]
>>"%Temp%\Reg2Temp.reg" echo "AutoRun"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\USBSTOR]
>>"%Temp%\Reg2Temp.reg" echo "AutoRun"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\cdrom]
>>"%Temp%\Reg2Temp.reg" echo "Autorun"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\cdrom]
>>"%Temp%\Reg2Temp.reg" echo "Autorun"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;隐藏“操作中心”托盘图标
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "HideSCAHealth"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;在单独的进程中打开文件夹窗口
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]
>>"%Temp%\Reg2Temp.reg" echo "SeparateProcess"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;开始菜单显示和任务栏
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]
>>"%Temp%\Reg2Temp.reg" echo "DisablePreviewDesktop"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "StartMenuAdminTools"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "Start_AdminToolsRoot"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo "Start_MinMFU"=dword:0000000a
>>"%Temp%\Reg2Temp.reg" echo "Start_JumpListItems"=dword:0000000a
>>"%Temp%\Reg2Temp.reg" echo "Start_PowerButtonAction"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo "Start_ShowRun"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "Start_ShowHelp"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "Start_ShowSetProgramAccessAndDefaults"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "Start_ShowPrinters"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "Start_ShowMyPics"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "Start_ShowNetPlaces"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "Start_ShowMyMusic"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "Start_ShowRecentDocs"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "Start_ShowDownloads"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]
>>"%Temp%\Reg2Temp.reg" echo "Start_LargeMFUIcons"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ApplicationDestinations]
>>"%Temp%\Reg2Temp.reg" echo "MaxEntries"=dword:00000010
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;总是从内存中卸载无用的动态链接
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\explorer]
>>"%Temp%\Reg2Temp.reg" echo "AlwaysUnloadDll"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;在 DOS 中支持长文件名
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Command Processor] 
>>"%Temp%\Reg2Temp.reg" echo "CompletionChar"=dword:00000009
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;开启CMD下按Tab键自动完成功能
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Command Processor] 
>>"%Temp%\Reg2Temp.reg" echo "CompletionChar"=dword:9 
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;13、语言栏隐藏到任务拦
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\CTF\MSUTB]
>>"%Temp%\Reg2Temp.reg" echo "ShowDeskBand"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\CTF\LangBar]
>>"%Temp%\Reg2Temp.reg" echo "ShowStatus"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo "ExtraIconsOnMinimized"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;14、取消语言栏上的帮助按钮
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\CTF\LangBar\ItemState\{ED9D5450-EBE6-4255-8289-F8A31E687228}]
>>"%Temp%\Reg2Temp.reg" echo "DemoteLevel"=dword:00000003
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;15、安装驱动时不搜索 Windows Update
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DriverSearching]
>>"%Temp%\Reg2Temp.reg" echo "DontSearchWindowsUpdate"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "DontPromptForWindowsUpdate"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;16、在任务栏显示音量图标 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Applets\SysTray] 
>>"%Temp%\Reg2Temp.reg" echo "Services"=dword:0000001f 
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;禁止我最近的文档记录
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "NoRecentDocsHistory"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]
>>"%Temp%\Reg2Temp.reg" echo "Start_ShowRecentDocs"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "Start_TrackDocs"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;禁止资源管理器右上角搜索框的搜索记录
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "DisableSearchBoxSuggestions"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;启动时禁止运行欢迎中心
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run]
>>"%Temp%\Reg2Temp.reg" echo "WindowsWelcomeCenter"=-
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;启动期间禁止更新组策略以加快启动
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System]
>>"%Temp%\Reg2Temp.reg" echo "SynchronousUserGroupPolicy"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "SynchronousMachineGroupPolicy"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;禁止登录后创建成功登录报告功能
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon]
>>"%Temp%\Reg2Temp.reg" echo "ReportBootOk"="0"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;当资源管理器崩溃时则自动重启资源管理器
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Winlogon]
>>"%Temp%\Reg2Temp.reg" echo "AutoRestartShell"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;关闭程序兼容性助手
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat]
>>"%Temp%\Reg2Temp.reg" echo "DisablePCA"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;关闭预读以减少开机进程条等待时间加快启动
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters]
>>"%Temp%\Reg2Temp.reg" echo "EnablePrefetcher"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters]
>>"%Temp%\Reg2Temp.reg" echo "EnablePrefetcher"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;去除快捷键小箭头
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\lnkfile] 
>>"%Temp%\Reg2Temp.reg" echo "IsShortcut"=- 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\piffile] 
>>"%Temp%\Reg2Temp.reg" echo "IsShortcut"=- 
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;删除右键新建公文包联系人BMP
>>"%Temp%\Reg2Temp.reg" echo [-HKEY_CLASSES_ROOT\Briefcase]
>>"%Temp%\Reg2Temp.reg" echo [-HKEY_CLASSES_ROOT\.contact]
>>"%Temp%\Reg2Temp.reg" echo [-HKEY_CLASSES_ROOT\.bmp]
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;删除图标快捷方式的字样
>>"%Temp%\Reg2Temp.reg" echo [HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "Link"=hex:00,00,00,00
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "Link"=hex:00,00,00,00
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;彻底删除IE链接文件夹
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Toolbar]
>>"%Temp%\Reg2Temp.reg" echo "LinksFolderName"=" "
>>"%Temp%\Reg2Temp.reg" echo "Locked"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "ShowDiscussionButton"="Yes"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;加快开机速度
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters]
>>"%Temp%\Reg2Temp.reg" echo "EnablePrefetcher"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters]
>>"%Temp%\Reg2Temp.reg" echo "EnablePrefetcher"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon]
>>"%Temp%\Reg2Temp.reg" echo "ReportBootOk"="0"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4D36E96A-E325-11CE-BFC1-08002BE10318}\0001]
>>"%Temp%\Reg2Temp.reg" echo "UserMasterDeviceType"=dword:00000003
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4D36E96A-E325-11CE-BFC1-08002BE10318}\0002]
>>"%Temp%\Reg2Temp.reg" echo "UserMasterDeviceType"=dword:00000003
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4D36E96A-E325-11CE-BFC1-08002BE10318}\0001]
>>"%Temp%\Reg2Temp.reg" echo "UserMasterDeviceType"=dword:00000003
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4D36E96A-E325-11CE-BFC1-08002BE10318}\0002]
>>"%Temp%\Reg2Temp.reg" echo "UserMasterDeviceType"=dword:00000003
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;桌面显示快捷图标
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel]
>>"%Temp%\Reg2Temp.reg" echo "{20D04FE0-3AEA-1069-A2D8-08002B30309D}"=dword:00000000  ;桌面显示计算机
>>"%Temp%\Reg2Temp.reg" echo "{59031a47-3f72-44a7-89c5-5595fe6b30ee}"=dword:00000000  ;桌面显示用户
>>"%Temp%\Reg2Temp.reg" echo "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}"=dword:00000000  ;桌面显示网络
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;加快关机速度
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control]
>>"%Temp%\Reg2Temp.reg" echo "WaitToKillServiceTimeout"="2000"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control]
>>"%Temp%\Reg2Temp.reg" echo "WaitToKillServiceTimeout"="2000"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Control Panel\Desktop]
>>"%Temp%\Reg2Temp.reg" echo "HungAppTimeout"="500"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Control Panel\Desktop]
>>"%Temp%\Reg2Temp.reg" echo "WaitToKillAppTimeout"="2000"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;自动关闭停止响应的程序
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Control Panel\Desktop]
>>"%Temp%\Reg2Temp.reg" echo "AutoEndTasks"="1"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;关闭默认共享
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters] 
>>"%Temp%\Reg2Temp.reg" echo "AutoShareServer"=dword:00000000 
>>"%Temp%\Reg2Temp.reg" echo "AutoSharewks"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;禁止自动运行
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "NoDriveTypeAutoRun"=dword:000000ff
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "NoDriveTypeAutoRun"=dword:000000ff
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;[HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\cdrom]
>>"%Temp%\Reg2Temp.reg" echo ;"AutoRun"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;[HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\USBSTOR]
>>"%Temp%\Reg2Temp.reg" echo ;"AutoRun"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\cdrom]
>>"%Temp%\Reg2Temp.reg" echo ;"AutoRun"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\USBSTOR]
>>"%Temp%\Reg2Temp.reg" echo ;"AutoRun"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;设置记事本显示状态栏
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\NotePad]
>>"%Temp%\Reg2Temp.reg" echo "StatusBar"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;记事本自动换行
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\NotePad]
>>"%Temp%\Reg2Temp.reg" echo "fwrap"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;跳过首次打开WMP时出现协议窗口
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsMediaPlayer]
>>"%Temp%\Reg2Temp.reg" echo "GroupPrivacyAcceptance"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;系统失败
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl]
>>"%Temp%\Reg2Temp.reg" echo ;不将事件写入系统日记
>>"%Temp%\Reg2Temp.reg" echo "LogEvent"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;禁用自动重新启动
>>"%Temp%\Reg2Temp.reg" echo "AutoReboot"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;不写入调试信息
>>"%Temp%\Reg2Temp.reg" echo "Overwrite"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "CrashDumpEnabled"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\CrashControl]
>>"%Temp%\Reg2Temp.reg" echo "AutoReboot"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;开启自动刷新，防止假死
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon]
>>"%Temp%\Reg2Temp.reg" echo "AutoRestartShell"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;提高前台程序的显示速度
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Control Panel\Desktop]
>>"%Temp%\Reg2Temp.reg" echo "ForegroundLockTimeout"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;拖动窗口时不再显示窗口内容，避免在拖动窗口时留下残影卡住界面
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Control Panel\Desktop]
>>"%Temp%\Reg2Temp.reg" echo "DragFullWindows"="0"
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;总是从内存中卸载无用的动态链接
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\explorer]
>>"%Temp%\Reg2Temp.reg" echo "AlwaysUnloadDll"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;禁止登录后创建成功登录报告功能
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon]
>>"%Temp%\Reg2Temp.reg" echo "ReportBootOk"="0"
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;清除内存内被不使用的DLL文件
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\explorer\AlwaysUnloadDLL]
>>"%Temp%\Reg2Temp.reg" echo @="1"
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;当资源管理器崩溃时则自动重启资源管理器
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Winlogon]
>>"%Temp%\Reg2Temp.reg" echo "AutoRestartShell"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center]
>>"%Temp%\Reg2Temp.reg" echo "UACDisableNotify"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System]
>>"%Temp%\Reg2Temp.reg" echo "EnableLUA"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Action Center\Checks\{C8E6F269-B90A-4053-A3BE-499AFCEC98C4}.check.0]
>>"%Temp%\Reg2Temp.reg" echo "CheckSetting"=hex:23,00,41,00,43,00,42,00,6c,00,6f,00,62,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   01,00,00,00,80,00,00,00,6c,89,25,74,ed,ad,d1,a1,84,d9,cb,01,00,00,00,00,7b,\
>>"%Temp%\Reg2Temp.reg" echo   00,43,00,38,00,45,00,36,00,46,00,32,00,36,00,39,00,2d,00,42,00,39,00,30,00,\
>>"%Temp%\Reg2Temp.reg" echo   41,00,2d,00,34,00,30,00,35,00,33,00,2d,00,41,00,33,00,42,00,45,00,2d,00,34,\
>>"%Temp%\Reg2Temp.reg" echo   00,39,00,39,00,41,00,46,00,43,00,45,00,43,00,39,00,38,00,43,00,34,00,7d,00,\
>>"%Temp%\Reg2Temp.reg" echo   2e,00,6e,00,6f,00,74,00,69,00,66,00,69,00,63,00,61,00,74,00,69,00,6f,00,6e,\
>>"%Temp%\Reg2Temp.reg" echo   00,2e,00,32,00,00,00,00,31,00,33,00,00,00,14,00,00,00
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;设定蓝屏时自启动
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl]
>>"%Temp%\Reg2Temp.reg" echo "AutoReboot"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "CrashDumpEnabled"=dword:00000003
>>"%Temp%\Reg2Temp.reg" echo "DumpFile"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,\
>>"%Temp%\Reg2Temp.reg" echo   74,00,25,00,5c,00,4d,00,45,00,4d,00,4f,00,52,00,59,00,2e,00,44,00,4d,00,50,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00
>>"%Temp%\Reg2Temp.reg" echo "LogEvent"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "MinidumpDir"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,\
>>"%Temp%\Reg2Temp.reg" echo   00,74,00,25,00,5c,00,4d,00,69,00,6e,00,69,00,64,00,75,00,6d,00,70,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "Overwrite"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "SendAlert"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;开启记事本的自动换行
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Notepad]
>>"%Temp%\Reg2Temp.reg" echo "fWrap"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;用记事本打开NFO文件
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.nfo]
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.nfo\OpenWithList]
>>"%Temp%\Reg2Temp.reg" echo "a"="NOTEPAD.EXE"
>>"%Temp%\Reg2Temp.reg" echo "MRUList"="a"
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.nfo\OpenWithProgids]
>>"%Temp%\Reg2Temp.reg" echo "MSInfoFile"=hex(0):
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.nfo\UserChoice]
>>"%Temp%\Reg2Temp.reg" echo "Progid"="Applications\\notepad.exe"
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;资源管理器窗口最小化时显示完整路径
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState]
>>"%Temp%\Reg2Temp.reg" echo "FullPath"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;当Windows检测到通信活动时：不执行任何操作
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Multimedia\Audio]
>>"%Temp%\Reg2Temp.reg" echo "UserDuckingPreference"=dword:00000003
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;窗口内动画控件和元素
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ComboBoxAnimation]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;任务栏和开始菜单中的动画
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TaskbarAnimations]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\MenuAnimation]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TooltipAnimation]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;平滑滚动列表框
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListBoxSmoothScrolling]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;平滑屏幕字体边缘
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\FontSmoothing]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;为每种文件夹类型使用一种背景图片
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewWatermark]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;显示半透明的选择长方形
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewAlphaSelect]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;显示半透明的选择长方形
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\SelectionFade]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;在窗口下显示阴影
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DropShadow]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;在鼠标指针下显示阴影
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\CursorShadow]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;在最大化和最小化时显示动态窗口
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\AnimateMinMax]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;拖动时显示窗口内容
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DragFullWindows]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;在任务栏时间处显示星期
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Control Panel\International]
>>"%Temp%\Reg2Temp.reg" echo "sLongDate"="yyyy'年'M'月'd'日' dddd"
>>"%Temp%\Reg2Temp.reg" echo "sShortDate"="yyyy-M-d dddd"
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;隐藏操作中心
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "HideSCAHealth"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;关闭窗口的动画效果、桌面图标-标题换行
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics]
>>"%Temp%\Reg2Temp.reg" echo "MinAnimate"="1"
>>"%Temp%\Reg2Temp.reg" echo "IconTitleWrap"="1"
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;性能选项->“让 Windows 选择计算机的最佳设置”
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects]
>>"%Temp%\Reg2Temp.reg" echo "VisualFXSetting"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;窗口内动画控件和元素
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ComboBoxAnimation]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;任务栏和开始菜单中的动画
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TaskbarAnimations]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultByAlphaTest"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TooltipAnimation]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultByAlphaTest"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\MenuAnimation]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultByAlphaTest"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;平滑滚动列表框
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListBoxSmoothScrolling]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;平滑屏幕字体边缘
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\FontSmoothing]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultByFontTest"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;为每种文件夹类型使用一种背景图片
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewWatermark]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;显示半透明的选择长方形
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewAlphaSelect]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultByAlphaTest"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;显示半透明的选择长方形
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\SelectionFade]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultByAlphaTest"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;在窗口下显示阴影
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DropShadow]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultByAlphaTest"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;在鼠标指针下显示阴影
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\CursorShadow]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;在最大化和最小化时显示动态窗口
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\AnimateMinMax]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;拖动时显示窗口内容
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DragFullWindows]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;关闭系统还原
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore]
>>"%Temp%\Reg2Temp.reg" echo "RPSessionInterval"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo [-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SPP\Clients]
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SPP\Clients]
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;(二)开始菜单设置选项
>>"%Temp%\Reg2Temp.reg" echo ;显示运行
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]
>>"%Temp%\Reg2Temp.reg" echo "Start_ShowRun"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;取消游戏里“下载有关已安装游戏的技巧和信息”和“收集最近玩过的游戏信息”
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\GameUX]
>>"%Temp%\Reg2Temp.reg" echo "FirstRunDialogLaunched"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DownLoadGameInfo"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "ListRecentlyPlayed"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;==============服务优化==============
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;禁用Windows Defender间谍扫描功能
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\WinDefend]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Defender"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\WinDefend]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Defender"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;禁用Windows 索引服务，能大幅提高性能
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\WSearch]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Search"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\WSearch]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Search"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;调整Windows 自动更新服务为手动
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\wuauserv]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Update"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000003
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\wuauserv]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Update"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000003
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;禁用Windows 身份验证
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\PolicyAgent]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="IPsec Policy Agent"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\PolicyAgent]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="IPsec Policy Agent"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;禁用Windows 远程用户修改注册表
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\RemoteRegistry]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Remote Registry"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\RemoteRegistry]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Remote Registry"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;禁用Windows 二次登陆
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\seclogon]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Secondary Logon"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\seclogon]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Secondary Logon"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;禁用Windows 系统事件通知
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\SENS]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="System Event Notification Service"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\SENS]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="System Event Notification Service"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;调整Windows 时间同步服务为手动
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\W32Time]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Time"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000003
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\W32Time]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Time"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000003
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;禁用Windows 错误报告服务
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\WerSvc]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Error Reporting Service"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\WerSvc]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Error Reporting Service"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;7.取消运行程序前安全警告
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Associations]
>>"%Temp%\Reg2Temp.reg" echo "ModRiskFileTypes"=".bat;.exe;.reg;.vbs"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;==============IE浏览器设置==============
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{B416D21B-3B22-B6D4-BBD3-BBD452DB3D5B}]
>>"%Temp%\Reg2Temp.reg" echo @="Internet Explorer"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{B416D21B-3B22-B6D4-BBD3-BBD452DB3D5B}]
>>"%Temp%\Reg2Temp.reg" echo @="Internet Explorer"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{B416D21B-3B22-B6D4-BBD3-BBD452DB3D5B}]
>>"%Temp%\Reg2Temp.reg" echo @="Internet Explorer"
>>"%Temp%\Reg2Temp.reg" echo ;"InfoTip"="C:\\Windows\\system32\\zh-CN\\ieframe.dll.mui,-881"
>>"%Temp%\Reg2Temp.reg" echo ;"LocalizedString"="C:\\Windows\\system32\\zh-CN\\ieframe.dll.mui,-880"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{B416D21B-3B22-B6D4-BBD3-BBD452DB3D5B}\DefaultIcon]
>>"%Temp%\Reg2Temp.reg" echo @="C:\\Program Files\\Internet Explorer\\iexplore.exe,-32528"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{B416D21B-3B22-B6D4-BBD3-BBD452DB3D5B}\Shell]
>>"%Temp%\Reg2Temp.reg" echo @=""
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{B416D21B-3B22-B6D4-BBD3-BBD452DB3D5B}\Shell\NoAddOns]
>>"%Temp%\Reg2Temp.reg" echo @="在没有加载项的情况下启动(&N)"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{B416D21B-3B22-B6D4-BBD3-BBD452DB3D5B}\Shell\NoAddOns\Command]
>>"%Temp%\Reg2Temp.reg" echo @="C:\\Program Files\\Internet Explorer\\iexplore.exe about:NoAdd-ons"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{B416D21B-3B22-B6D4-BBD3-BBD452DB3D5B}\Shell\Open]
>>"%Temp%\Reg2Temp.reg" echo @="打开主页(&H)"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{B416D21B-3B22-B6D4-BBD3-BBD452DB3D5B}\Shell\Open\Command]
>>"%Temp%\Reg2Temp.reg" echo @="C:\\Program Files\\Internet Explorer\\iexplore.exe"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{B416D21B-3B22-B6D4-BBD3-BBD452DB3D5B}\Shell\Set]
>>"%Temp%\Reg2Temp.reg" echo @="属性(&R)"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{B416D21B-3B22-B6D4-BBD3-BBD452DB3D5B}\Shell\Set\Command]
>>"%Temp%\Reg2Temp.reg" echo @="Rundll32.exe Shell32.dll,Control_RunDLL Inetcpl.cpl"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{B416D21B-3B22-B6D4-BBD3-BBD452DB3D5B}\ShellFolder]
>>"%Temp%\Reg2Temp.reg" echo @="C:\\Windows\\system32\\ieframe.dll,-190"
>>"%Temp%\Reg2Temp.reg" echo "Attributes"=dword:00000030
>>"%Temp%\Reg2Temp.reg" echo "HideFolderVerbs"=""
>>"%Temp%\Reg2Temp.reg" echo "WantsParseDisplayName"=""
>>"%Temp%\Reg2Temp.reg" echo "HideOnDesktopPerUser"=""
>>"%Temp%\Reg2Temp.reg" echo "HideAsDeletePerUser"=""
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\User Preferences]
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Tracing\Upgrade_RASAPI32]
>>"%Temp%\Reg2Temp.reg" echo "EnableFileTracing"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "EnableConsoleTracing"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "FileTracingMask"=dword:ffff0000
>>"%Temp%\Reg2Temp.reg" echo "ConsoleTracingMask"=dword:ffff0000
>>"%Temp%\Reg2Temp.reg" echo "MaxFileSize"=dword:00100000
>>"%Temp%\Reg2Temp.reg" echo "FileDirectory"=hex(2):25,00,77,00,69,00,6e,00,64,00,69,00,72,00,25,00,5c,00,\
>>"%Temp%\Reg2Temp.reg" echo   74,00,72,00,61,00,63,00,69,00,6e,00,67,00,00,00
>>"%Temp%\Reg2Temp.reg" echo   
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Tracing\Upgrade_RASMANCS]
>>"%Temp%\Reg2Temp.reg" echo "EnableFileTracing"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "EnableConsoleTracing"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "FileTracingMask"=dword:ffff0000
>>"%Temp%\Reg2Temp.reg" echo "ConsoleTracingMask"=dword:ffff0000
>>"%Temp%\Reg2Temp.reg" echo "MaxFileSize"=dword:00100000
>>"%Temp%\Reg2Temp.reg" echo "FileDirectory"=hex(2):25,00,77,00,69,00,6e,00,64,00,69,00,72,00,25,00,5c,00,\
>>"%Temp%\Reg2Temp.reg" echo   74,00,72,00,61,00,63,00,69,00,6e,00,67,00,00,00
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\SearchScopes]
>>"%Temp%\Reg2Temp.reg" echo "DefaultScope"="{0E7B197B-A3DE-4FD4-A19A-1EECF791D16F}"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\SearchScopes]
>>"%Temp%\Reg2Temp.reg" echo "DefaultScope"="{0E7B197B-A3DE-4FD4-A19A-1EECF791D16F}"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\SearchScopes\{0E7B197B-A3DE-4FD4-A19A-1EECF791D16F}]
>>"%Temp%\Reg2Temp.reg" echo "Codepage"=dword:0000fde9
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="网址导航"
>>"%Temp%\Reg2Temp.reg" echo "URL"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Connections]
>>"%Temp%\Reg2Temp.reg" echo "SavedLegacySettings"=hex:46,00,00,00,07,00,00,00,09,00,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00,00,04,00,00,00,1b,00,00,00,68,74,74,70,3a,2f,2f,77,70,61,\
>>"%Temp%\Reg2Temp.reg" echo   64,2e,64,6f,6d,61,69,6e,2f,77,70,61,64,2e,64,61,74,70,2c,57,bf,04,f8,cb,01,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00,00,00,00,00,00,00,05,00,00,00,17,00,00,00,00,00,00,00,fe,\
>>"%Temp%\Reg2Temp.reg" echo   80,00,00,00,00,00,00,d1,04,cd,64,e4,5d,33,65,0b,00,00,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,17,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,fe,80,00,00,00,00,00,00,00,00,5e,fe,c0,a8,01,65,0c,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,17,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,fe,80,00,00,00,00,00,00,0c,18,05,5b,3f,57,fe,9a,0d,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   02,00,00,00,c0,a8,01,65,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,41,00,\
>>"%Temp%\Reg2Temp.reg" echo   01,40,de,28,0a,08,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,17,00,00,00,00,00,00,00,20,01,00,00,41,37,9e,76,0c,18,05,5b,3f,57,\
>>"%Temp%\Reg2Temp.reg" echo   fe,9a,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,00,00,00
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;IE7_8工具栏使用小图标
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\CommandBar]
>>"%Temp%\Reg2Temp.reg" echo "SmallIcons"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;跳过IE7_8首次运行自定义设置
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "RunOnceHasShown"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "RunOnceComplete"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "DisableFirstRunCustomize"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;IE8主页设为Hao123导航
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "Start Page"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "Default_Page_URL"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "Default_Search_URL"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "Search Page"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "Search Bar"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;8、让 IE 的“另存为”下载窗口下载完成时自动关闭
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "NotifyDownloadComplete"="no"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;跳过IE首次运行自定义设置
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "RunOnceHasShown"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "RunOnceComplete"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "DisableFirstRunCustomize"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;在IE的新标签中打开链接窗口页面
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "PopupsUseNewWindow"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;IE开启图像自动缩放
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "Enable AutoImageResize"="yes"
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;IE开启ClearType
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "UseClearType"="yes" 
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;从不进行拨号连接〔避免弹窗〕
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Internet Settings]
>>"%Temp%\Reg2Temp.reg" echo "EnableAutodial"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings]
>>"%Temp%\Reg2Temp.reg" echo "EnableAutodial"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;自动卸载IE中残留的DLL
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "AlwaysUnloadDLL"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;自动更新设置
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update]
>>"%Temp%\Reg2Temp.reg" echo "AUOptions"=dword:00000001         ;从不检查更新 
>>"%Temp%\Reg2Temp.reg" echo "ElevateNonAdmins"=dword:00000001  ;允许所有用户在此计算机安装更新
>>"%Temp%\Reg2Temp.reg" echo "IncludeRecommendedUpdates"=dword:00000000  ;关闭推荐更新(多为垃圾补丁推荐关闭)
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU]
>>"%Temp%\Reg2Temp.reg" echo "NoAUShutdownOption"=dword:00000001             ;关闭Windows时对话框不显示"安装更新并关机"
>>"%Temp%\Reg2Temp.reg" echo "NoAutoRebootWithLoggedOnUsers"=dword:00000001  ;禁止安装更新后自动重启
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;始终在新选项卡中打开弹出窗口
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "PopupsUseNewWindow"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ; 12、不“检查 Internet Explorer 是否为默认浏览器”
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "Check_Associations"="no"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;13、 IE 地址栏 -> Ctrl+Enter 快捷键自动补齐域名：改.com.cn 为.com
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Toolbar\QuickComplete]
>>"%Temp%\Reg2Temp.reg" echo "QuickComplete"="https://www.%s.com"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;关闭默认共享(禁止 $C $D,禁止 $Admin)
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters]
>>"%Temp%\Reg2Temp.reg" echo "AutoShareServer"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "AutoShareWks"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;禁止远程修改注册表
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurePipeServers\winreg]
>>"%Temp%\Reg2Temp.reg" echo "RemoteRegAccess"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;取消远程协助
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Remote Assistance]
>>"%Temp%\Reg2Temp.reg" echo "fAllowToGetHelp"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Remote Assistance]
>>"%Temp%\Reg2Temp.reg" echo "fAllowToGetHelp"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;退出时删除浏览历史记录(0关闭，1开启)
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Privacy]
>>"%Temp%\Reg2Temp.reg" echo "ClearBrowsingHistoryOnExit"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;启用选项卡浏览
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "Enabled"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;关闭多个选项卡时发出警告
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "WarnOnClose"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;当创建新选项卡时，始终切换到新选项卡
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "OpenInForeground"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;在任务栏中显示各个选项卡的预览
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "ThumbnailBehavior"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;关闭快速导航选项卡
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "QuickTabsThreshold"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;关闭选项卡分组
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "Groups"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;打开IE时只加载第一个主页
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "OpenAllHomePages"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;打开新选项卡后，打开您的第一个主页
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "NewTabPageShow"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;始终在新选项卡中打开弹出窗口
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "PopupsUseNewWindow"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;从当前窗口中的新选项卡打开链接
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "ShortcutBehavior"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;IE本地Intranet安全级别
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1]
>>"%Temp%\Reg2Temp.reg" echo "CurrentLevel"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "1001"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "1004"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "1201"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "1209"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "1806"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;IE可信站点安全级别
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2]
>>"%Temp%\Reg2Temp.reg" echo "CurrentLevel"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "1001"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "1004"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "1201"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "1209"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "1806"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;去掉IE安全设置风险提示
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Group Policy Objects\{C2D0B7D4-7CC5-40A6-AC4C-A25BA2637B18}Machine\Software\Policies\Microsoft\Internet Explorer\Security]
>>"%Temp%\Reg2Temp.reg" echo "DisableSecuritySettingsCheck"=dword:00000001 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\Security] 
>>"%Temp%\Reg2Temp.reg" echo "DisableSecuritySettingsCheck"=dword:00000001 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Ext] 
>>"%Temp%\Reg2Temp.reg" echo "NoFirsttimeprompt"=dword:00000001 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Group Policy Objects\{C2D0B7D4-7CC5-40A6-AC4C-A25BA2637B18}Machine\Software\Microsoft\Windows\CurrentVersion\Policies\Ext]
>>"%Temp%\Reg2Temp.reg" echo "NoFirsttimeprompt"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;IE开启图像自动缩放
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "Enable AutoImageResize"="yes"
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;IE开启ClearType
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "UseClearType"="yes" 
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;从不进行拨号连接〔避免弹窗〕
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Internet Settings]
>>"%Temp%\Reg2Temp.reg" echo "EnableAutodial"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings]
>>"%Temp%\Reg2Temp.reg" echo "EnableAutodial"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;自动卸载IE中残留的DLL
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "AlwaysUnloadDLL"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;自动更新设置
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update]
>>"%Temp%\Reg2Temp.reg" echo "AUOptions"=dword:00000001         ;从不检查更新 
>>"%Temp%\Reg2Temp.reg" echo "ElevateNonAdmins"=dword:00000001  ;允许所有用户在此计算机安装更新
>>"%Temp%\Reg2Temp.reg" echo "IncludeRecommendedUpdates"=dword:00000000  ;关闭推荐更新(多为垃圾补丁推荐关闭)
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU]
>>"%Temp%\Reg2Temp.reg" echo "NoAUShutdownOption"=dword:00000001             ;关闭Windows时对话框不显示"安装更新并关机"
>>"%Temp%\Reg2Temp.reg" echo "NoAutoRebootWithLoggedOnUsers"=dword:00000001  ;禁止安装更新后自动重启
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;关闭默认共享(禁止 $C $D,禁止 $Admin)
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters]
>>"%Temp%\Reg2Temp.reg" echo "AutoShareServer"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "AutoShareWks"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;禁止远程修改注册表
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurePipeServers\winreg]
>>"%Temp%\Reg2Temp.reg" echo "RemoteRegAccess"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;取消远程协助
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Remote Assistance]
>>"%Temp%\Reg2Temp.reg" echo "fAllowToGetHelp"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Remote Assistance]
>>"%Temp%\Reg2Temp.reg" echo "fAllowToGetHelp"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;关闭防火墙
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\SharedAccess\Parameters\FirewallPolicy\PublicProfile]
>>"%Temp%\Reg2Temp.reg" echo "EnableFirewall" = dword:00000000
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\SharedAccess\Parameters\FirewallPolicy\StandardProfile]
>>"%Temp%\Reg2Temp.reg" echo "EnableFirewall" = dword:00000000
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\SharedAccess\Parameters\FirewallPolicy\PublicProfile]
>>"%Temp%\Reg2Temp.reg" echo "EnableFirewall" = dword:00000000
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\SharedAccess\Parameters\FirewallPolicy\StandardProfile]
>>"%Temp%\Reg2Temp.reg" echo "EnableFirewall" = dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;把IE可同时下载数目增到10
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings]
>>"%Temp%\Reg2Temp.reg" echo "MaxConnectionsPer1_0Server"=dword:00000064
>>"%Temp%\Reg2Temp.reg" echo "MaxConnectionsPerServer"=dword:00000064
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;加快结束出错程序等待时间;注意：◆◆改太小容易引起WIN7右下角网络图标不见，或有红XX但又可以上网，再或有图标但有小圆圈◆◆
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Control Panel\Desktop]
>>"%Temp%\Reg2Temp.reg" echo "HungAppTimeout"="2000"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;解决右键管理出错的问题
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Manage]
>>"%Temp%\Reg2Temp.reg" echo @=hex(2):40,00,25,00,73,00,79,00,73,00,74,00,65,00,6d,00,72,00,6f,00,6f,00,74,\
>>"%Temp%\Reg2Temp.reg" echo 00,25,00,5c,00,73,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,6d,00,\
>>"%Temp%\Reg2Temp.reg" echo 79,00,63,00,6f,00,6d,00,70,00,75,00,74,00,2e,00,64,00,6c,00,6c,00,2c,00,2d,\
>>"%Temp%\Reg2Temp.reg" echo 00,34,00,30,00,30,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "MUIVerb"=hex(2):40,00,25,00,73,00,79,00,73,00,74,00,65,00,6d,00,72,00,6f,00,\
>>"%Temp%\Reg2Temp.reg" echo 6f,00,74,00,25,00,5c,00,73,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,\
>>"%Temp%\Reg2Temp.reg" echo 00,6d,00,79,00,63,00,6f,00,6d,00,70,00,75,00,74,00,2e,00,64,00,6c,00,6c,00,\
>>"%Temp%\Reg2Temp.reg" echo 2c,00,2d,00,34,00,30,00,30,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "SuppressionPolicy"=dword:4000003c
>>"%Temp%\Reg2Temp.reg" echo "HasLUAShield"=""
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Manage\command]
>>"%Temp%\Reg2Temp.reg" echo @=hex(2):25,00,77,00,69,00,6e,00,64,00,69,00,72,00,25,00,5c,00,73,00,79,00,73,\
>>"%Temp%\Reg2Temp.reg" echo 00,74,00,65,00,6d,00,33,00,32,00,5c,00,6d,00,6d,00,63,00,2e,00,65,00,78,00,\
>>"%Temp%\Reg2Temp.reg" echo 65,00,20,00,2f,00,73,00,20,00,25,00,77,00,69,00,6e,00,64,00,69,00,72,00,25,\
>>"%Temp%\Reg2Temp.reg" echo 00,5c,00,73,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,63,00,6f,00,\
>>"%Temp%\Reg2Temp.reg" echo 6d,00,70,00,6d,00,67,00,6d,00,74,00,2e,00,6d,00,73,00,63,00,00,00
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;开关Windows7中TCP/IP半开连接数限制
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters]
>>"%Temp%\Reg2Temp.reg" echo "EnableDeadGWDetect"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;去除恶意默认搜索篡改，设置为无
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\SearchScopes\{B8E20CD7-BAC2-4820-9AA6-1060B3AF25E2}]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"=""
>>"%Temp%\Reg2Temp.reg" echo "URL"=""
>>"%Temp%\Reg2Temp.reg" echo "OSDFileURL"=""
>>"%Temp%\Reg2Temp.reg" echo "FaviconURL"=""
>>"%Temp%\Reg2Temp.reg" echo "SuggestionsURL_JSON"=""
>>"%Temp%\Reg2Temp.reg" echo "SortIndex"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel]
>>"%Temp%\Reg2Temp.reg" echo "Homepage"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings]
>>"%Temp%\Reg2Temp.reg" echo "DisplayScriptDownloadFailureUI"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo 关闭程序兼容性助理
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat]
>>"%Temp%\Reg2Temp.reg" echo "DisablePCA"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;关闭驱动程序验证
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Driver Signing]
>>"%Temp%\Reg2Temp.reg" echo "Policy"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Driver Signing]
>>"%Temp%\Reg2Temp.reg" echo "Policy"=hex:01
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows NT\Driver Signing]
>>"%Temp%\Reg2Temp.reg" echo "BehaviorOnFailedVerify"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;修改注册表将win7右键菜单“兼容性疑难解答”去掉
>>"%Temp%\Reg2Temp.reg" echo [-HKEY_CLASSES_ROOT\lnkfile\shellex\ContextMenuHandlers\Compatibility]
>>"%Temp%\Reg2Temp.reg" echo [-HKEY_CLASSES_ROOT\exefile\shellex\ContextMenuHandlers\Compatibility]
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\batfile\ShellEx\ContextMenuHandlers\Compatibility]
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;关闭UAC通知
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center]
>>"%Temp%\Reg2Temp.reg" echo "UacDisableNotify"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;禁用追踪损坏的快捷链接
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "NoResolveTrack"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;启动故障恢复-取消系统失败三项：将事件写入系统日志；自动重新启动；取消写入调试信息
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\CrashControl]
>>"%Temp%\Reg2Temp.reg" echo "AutoReboot"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "CrashDumpEnabled"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "LogEvent"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;Windows Media Player设置
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsMediaPlayer]
>>"%Temp%\Reg2Temp.reg" echo "GroupPrivacyAcceptance"=dword:00000001 ;不显示首次使用对话框
>>"%Temp%\Reg2Temp.reg" echo "DisableAutoUpdate"=dword:00000001      ;防止WMP自动更新
>>"%Temp%\Reg2Temp.reg" echo "EnableScreenSaver"=dword:00000001      ;播放WMP时关闭屏保
>>"%Temp%\Reg2Temp.reg" echo "PreventLibrarySharing"=dword:00000001  ;防止媒体共享
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;设置时间不同步
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\W32Time\Parameters]
>>"%Temp%\Reg2Temp.reg" echo "Type"="NoSync"
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\W32Time]
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\W32Time\Parameters]
>>"%Temp%\Reg2Temp.reg" echo "Type"="NoSync"
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\W32Time]
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo 语言栏隐藏到任务拦
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\CTF\MSUTB]
>>"%Temp%\Reg2Temp.reg" echo "ShowDeskBand"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\CTF\LangBar]
>>"%Temp%\Reg2Temp.reg" echo "ShowStatus"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo "ExtraIconsOnMinimized"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;取消语言栏上的帮助按钮
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\CTF\LangBar\ItemState\{ED9D5450-EBE6-4255-8289-F8A31E687228}]
>>"%Temp%\Reg2Temp.reg" echo "DemoteLevel"=dword:00000003
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;禁用错误报告
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PCHealth\ErrorReporting]
>>"%Temp%\Reg2Temp.reg" echo "ShowUI"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "DoReport"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;最小化语言栏(重启生效)
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\CTF\MSUTB]
>>"%Temp%\Reg2Temp.reg" echo "ShowDeskBand"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\CTF\LangBar]
>>"%Temp%\Reg2Temp.reg" echo "ShowStatus"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo "ExtraIconsOnMinimized"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;去掉某些SATA硬盘任务栏图标
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\nvata]
>>"%Temp%\Reg2Temp.reg" echo "DisableRemovable"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;(七)增补优化
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]
>>"%Temp%\Reg2Temp.reg" echo ;优化VISTA/7的资源管理器中的显示菜单更适合国人习惯
>>"%Temp%\Reg2Temp.reg" echo "AlwaysShowMenus"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;加速Aero Snap显示速度，更快看到窗口缩略图
>>"%Temp%\Reg2Temp.reg" echo "ExtendedUIHoverTime"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;加速Aero Peek透视桌面功能的显示速度
>>"%Temp%\Reg2Temp.reg" echo "DesktopLivePreviewHoverTime"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;修改本地账户的共享和安全模型为仅来宾
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa]
>>"%Temp%\Reg2Temp.reg" echo "forceguest"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo 设置OEM信息
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\MAIN]
>>"%Temp%\Reg2Temp.reg" echo "Default_Search_URL"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "Default_Page_URL"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "Default_Secondary_Page_URL"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "Start Page"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "Search Page"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "Search Bar"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main] 
>>"%Temp%\Reg2Temp.reg" echo "Default_Search_URL"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "Default_Page_URL"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "Default_Secondary_Page_URL"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "Start Page"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "Search Page"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "Search Bar"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\SearchScopes\{0E7B197B-A3DE-4FD4-A19A-1EECF791D16F}]
>>"%Temp%\Reg2Temp.reg" echo "Codepage"=dword:0000fde9
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="中文网址导航"
>>"%Temp%\Reg2Temp.reg" echo "URL"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;去除恶意默认搜索篡改，设置为无
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\SearchScopes\{B8E20CD7-BAC2-4820-9AA6-1060B3AF25E2}]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"=""
>>"%Temp%\Reg2Temp.reg" echo "URL"=""
>>"%Temp%\Reg2Temp.reg" echo "OSDFileURL"=""
>>"%Temp%\Reg2Temp.reg" echo "FaviconURL"=""
>>"%Temp%\Reg2Temp.reg" echo "SuggestionsURL_JSON"=""
>>"%Temp%\Reg2Temp.reg" echo "SortIndex"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel]
>>"%Temp%\Reg2Temp.reg" echo "Homepage"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main] 
>>"%Temp%\Reg2Temp.reg" echo "Secondary Start Pages"=""
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;解决音频服务未启动，任务栏喇叭图标有X的问题
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AudioSrv]
>>"%Temp%\Reg2Temp.reg" echo "DependOnService"=hex(7):50,00,6c,00,75,00,67,00,50,00,6c,00,61,00,79,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo 52,00,70,00,63,00,53,00,73,00,00,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "Description"="管理基于 Windows 的程序的音频设备。如果此服务被终止，音频设备及其音效将不能正常工作。如果此服务被禁用，任何依赖它的服务将无法启动。"
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Audio"
>>"%Temp%\Reg2Temp.reg" echo "ErrorControl"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "Group"="AudioGroup"
>>"%Temp%\Reg2Temp.reg" echo "ImagePath"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,\
>>"%Temp%\Reg2Temp.reg" echo 74,00,25,00,5c,00,53,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,73,\
>>"%Temp%\Reg2Temp.reg" echo 00,76,00,63,00,68,00,6f,00,73,00,74,00,2e,00,65,00,78,00,65,00,20,00,2d,00,\
>>"%Temp%\Reg2Temp.reg" echo 6b,00,20,00,6e,00,65,00,74,00,73,00,76,00,63,00,73,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "ObjectName"="LocalSystem"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo "Type"=dword:00000020
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AudioSrv\Parameters]
>>"%Temp%\Reg2Temp.reg" echo "ServiceDll"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,\
>>"%Temp%\Reg2Temp.reg" echo 00,74,00,25,00,5c,00,53,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,\
>>"%Temp%\Reg2Temp.reg" echo 61,00,75,00,64,00,69,00,6f,00,73,00,72,00,76,00,2e,00,64,00,6c,00,6c,00,00,\
>>"%Temp%\Reg2Temp.reg" echo 00
>>"%Temp%\Reg2Temp.reg" echo "ServiceDllUnloadOnStop"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AudioSrv\Enum]
>>"%Temp%\Reg2Temp.reg" echo "0"="Root\\LEGACY_AUDIOSRV\\0000"
>>"%Temp%\Reg2Temp.reg" echo "Count"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "NextInstance"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\POWER]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="@%SystemRoot%\\system32\\umpo.dll,-100"
>>"%Temp%\Reg2Temp.reg" echo "Group"="Plugplay"
>>"%Temp%\Reg2Temp.reg" echo "ImagePath"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,\
>>"%Temp%\Reg2Temp.reg" echo   74,00,25,00,5c,00,73,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,73,\
>>"%Temp%\Reg2Temp.reg" echo   00,76,00,63,00,68,00,6f,00,73,00,74,00,2e,00,65,00,78,00,65,00,20,00,2d,00,\
>>"%Temp%\Reg2Temp.reg" echo   6b,00,20,00,44,00,63,00,6f,00,6d,00,4c,00,61,00,75,00,6e,00,63,00,68,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00
>>"%Temp%\Reg2Temp.reg" echo "Description"="@%SystemRoot%\\system32\\umpo.dll,-101"
>>"%Temp%\Reg2Temp.reg" echo "ObjectName"="LocalSystem"
>>"%Temp%\Reg2Temp.reg" echo "ErrorControl"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo "Type"=dword:00000020
>>"%Temp%\Reg2Temp.reg" echo "ServiceSidType"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "RequiredPrivileges"=hex(7):53,00,65,00,54,00,63,00,62,00,50,00,72,00,69,00,76,\
>>"%Temp%\Reg2Temp.reg" echo   00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,53,00,65,00,63,00,75,00,\
>>"%Temp%\Reg2Temp.reg" echo   72,00,69,00,74,00,79,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,53,00,65,00,41,00,73,00,73,00,69,00,67,00,6e,00,50,00,72,00,69,00,\
>>"%Temp%\Reg2Temp.reg" echo   6d,00,61,00,72,00,79,00,54,00,6f,00,6b,00,65,00,6e,00,50,00,72,00,69,00,76,\
>>"%Temp%\Reg2Temp.reg" echo   00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,54,00,61,00,6b,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   4f,00,77,00,6e,00,65,00,72,00,73,00,68,00,69,00,70,00,50,00,72,00,69,00,76,\
>>"%Temp%\Reg2Temp.reg" echo   00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,4c,00,6f,00,61,00,64,00,\
>>"%Temp%\Reg2Temp.reg" echo   44,00,72,00,69,00,76,00,65,00,72,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,\
>>"%Temp%\Reg2Temp.reg" echo   00,67,00,65,00,00,00,53,00,65,00,42,00,61,00,63,00,6b,00,75,00,70,00,50,00,\
>>"%Temp%\Reg2Temp.reg" echo   72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,52,00,65,\
>>"%Temp%\Reg2Temp.reg" echo   00,73,00,74,00,6f,00,72,00,65,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   67,00,65,00,00,00,53,00,65,00,49,00,6d,00,70,00,65,00,72,00,73,00,6f,00,6e,\
>>"%Temp%\Reg2Temp.reg" echo   00,61,00,74,00,65,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,53,00,65,00,41,00,75,00,64,00,69,00,74,00,50,00,72,00,69,00,76,00,69,\
>>"%Temp%\Reg2Temp.reg" echo   00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,43,00,68,00,61,00,6e,00,67,00,\
>>"%Temp%\Reg2Temp.reg" echo   65,00,4e,00,6f,00,74,00,69,00,66,00,79,00,50,00,72,00,69,00,76,00,69,00,6c,\
>>"%Temp%\Reg2Temp.reg" echo   00,65,00,67,00,65,00,00,00,53,00,65,00,55,00,6e,00,64,00,6f,00,63,00,6b,00,\
>>"%Temp%\Reg2Temp.reg" echo   50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,44,\
>>"%Temp%\Reg2Temp.reg" echo   00,65,00,62,00,75,00,67,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,\
>>"%Temp%\Reg2Temp.reg" echo   65,00,00,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "FailureActions"=hex:00,00,00,00,00,00,00,00,00,00,00,00,03,00,00,00,14,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,02,00,00,00,60,ea,00,00,02,00,00,00,60,ea,00,00,02,00,00,00,60,ea,00,00
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\POWER\Parameters]
>>"%Temp%\Reg2Temp.reg" echo "ServiceDll"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,\
>>"%Temp%\Reg2Temp.reg" echo   00,74,00,25,00,5c,00,73,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,\
>>"%Temp%\Reg2Temp.reg" echo   75,00,6d,00,70,00,6f,00,2e,00,64,00,6c,00,6c,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "ServiceMain"="UmpoMain"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\services\POWER]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="@%SystemRoot%\\system32\\umpo.dll,-100"
>>"%Temp%\Reg2Temp.reg" echo "Group"="Plugplay"
>>"%Temp%\Reg2Temp.reg" echo "ImagePath"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,\
>>"%Temp%\Reg2Temp.reg" echo   74,00,25,00,5c,00,73,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,73,\
>>"%Temp%\Reg2Temp.reg" echo   00,76,00,63,00,68,00,6f,00,73,00,74,00,2e,00,65,00,78,00,65,00,20,00,2d,00,\
>>"%Temp%\Reg2Temp.reg" echo   6b,00,20,00,44,00,63,00,6f,00,6d,00,4c,00,61,00,75,00,6e,00,63,00,68,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00
>>"%Temp%\Reg2Temp.reg" echo "Description"="@%SystemRoot%\\system32\\umpo.dll,-101"
>>"%Temp%\Reg2Temp.reg" echo "ObjectName"="LocalSystem"
>>"%Temp%\Reg2Temp.reg" echo "ErrorControl"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo "Type"=dword:00000020
>>"%Temp%\Reg2Temp.reg" echo "ServiceSidType"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "RequiredPrivileges"=hex(7):53,00,65,00,54,00,63,00,62,00,50,00,72,00,69,00,76,\
>>"%Temp%\Reg2Temp.reg" echo   00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,53,00,65,00,63,00,75,00,\
>>"%Temp%\Reg2Temp.reg" echo   72,00,69,00,74,00,79,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,53,00,65,00,41,00,73,00,73,00,69,00,67,00,6e,00,50,00,72,00,69,00,\
>>"%Temp%\Reg2Temp.reg" echo   6d,00,61,00,72,00,79,00,54,00,6f,00,6b,00,65,00,6e,00,50,00,72,00,69,00,76,\
>>"%Temp%\Reg2Temp.reg" echo   00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,54,00,61,00,6b,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   4f,00,77,00,6e,00,65,00,72,00,73,00,68,00,69,00,70,00,50,00,72,00,69,00,76,\
>>"%Temp%\Reg2Temp.reg" echo   00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,4c,00,6f,00,61,00,64,00,\
>>"%Temp%\Reg2Temp.reg" echo   44,00,72,00,69,00,76,00,65,00,72,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,\
>>"%Temp%\Reg2Temp.reg" echo   00,67,00,65,00,00,00,53,00,65,00,42,00,61,00,63,00,6b,00,75,00,70,00,50,00,\
>>"%Temp%\Reg2Temp.reg" echo   72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,52,00,65,\
>>"%Temp%\Reg2Temp.reg" echo   00,73,00,74,00,6f,00,72,00,65,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   67,00,65,00,00,00,53,00,65,00,49,00,6d,00,70,00,65,00,72,00,73,00,6f,00,6e,\
>>"%Temp%\Reg2Temp.reg" echo   00,61,00,74,00,65,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,53,00,65,00,41,00,75,00,64,00,69,00,74,00,50,00,72,00,69,00,76,00,69,\
>>"%Temp%\Reg2Temp.reg" echo   00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,43,00,68,00,61,00,6e,00,67,00,\
>>"%Temp%\Reg2Temp.reg" echo   65,00,4e,00,6f,00,74,00,69,00,66,00,79,00,50,00,72,00,69,00,76,00,69,00,6c,\
>>"%Temp%\Reg2Temp.reg" echo   00,65,00,67,00,65,00,00,00,53,00,65,00,55,00,6e,00,64,00,6f,00,63,00,6b,00,\
>>"%Temp%\Reg2Temp.reg" echo   50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,44,\
>>"%Temp%\Reg2Temp.reg" echo   00,65,00,62,00,75,00,67,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,\
>>"%Temp%\Reg2Temp.reg" echo   65,00,00,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "FailureActions"=hex:00,00,00,00,00,00,00,00,00,00,00,00,03,00,00,00,14,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,02,00,00,00,60,ea,00,00,02,00,00,00,60,ea,00,00,02,00,00,00,60,ea,00,00
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\services\POWER\Parameters]
>>"%Temp%\Reg2Temp.reg" echo "ServiceDll"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,\
>>"%Temp%\Reg2Temp.reg" echo   00,74,00,25,00,5c,00,73,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,\
>>"%Temp%\Reg2Temp.reg" echo   75,00,6d,00,70,00,6f,00,2e,00,64,00,6c,00,6c,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "ServiceMain"="UmpoMain"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\POWER]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="@%SystemRoot%\\system32\\umpo.dll,-100"
>>"%Temp%\Reg2Temp.reg" echo "Group"="Plugplay"
>>"%Temp%\Reg2Temp.reg" echo "ImagePath"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,\
>>"%Temp%\Reg2Temp.reg" echo   74,00,25,00,5c,00,73,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,73,\
>>"%Temp%\Reg2Temp.reg" echo   00,76,00,63,00,68,00,6f,00,73,00,74,00,2e,00,65,00,78,00,65,00,20,00,2d,00,\
>>"%Temp%\Reg2Temp.reg" echo   6b,00,20,00,44,00,63,00,6f,00,6d,00,4c,00,61,00,75,00,6e,00,63,00,68,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00
>>"%Temp%\Reg2Temp.reg" echo "Description"="@%SystemRoot%\\system32\\umpo.dll,-101"
>>"%Temp%\Reg2Temp.reg" echo "ObjectName"="LocalSystem"
>>"%Temp%\Reg2Temp.reg" echo "ErrorControl"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo "Type"=dword:00000020
>>"%Temp%\Reg2Temp.reg" echo "ServiceSidType"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "RequiredPrivileges"=hex(7):53,00,65,00,54,00,63,00,62,00,50,00,72,00,69,00,76,\
>>"%Temp%\Reg2Temp.reg" echo   00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,53,00,65,00,63,00,75,00,\
>>"%Temp%\Reg2Temp.reg" echo   72,00,69,00,74,00,79,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,53,00,65,00,41,00,73,00,73,00,69,00,67,00,6e,00,50,00,72,00,69,00,\
>>"%Temp%\Reg2Temp.reg" echo   6d,00,61,00,72,00,79,00,54,00,6f,00,6b,00,65,00,6e,00,50,00,72,00,69,00,76,\
>>"%Temp%\Reg2Temp.reg" echo   00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,54,00,61,00,6b,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   4f,00,77,00,6e,00,65,00,72,00,73,00,68,00,69,00,70,00,50,00,72,00,69,00,76,\
>>"%Temp%\Reg2Temp.reg" echo   00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,4c,00,6f,00,61,00,64,00,\
>>"%Temp%\Reg2Temp.reg" echo   44,00,72,00,69,00,76,00,65,00,72,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,\
>>"%Temp%\Reg2Temp.reg" echo   00,67,00,65,00,00,00,53,00,65,00,42,00,61,00,63,00,6b,00,75,00,70,00,50,00,\
>>"%Temp%\Reg2Temp.reg" echo   72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,52,00,65,\
>>"%Temp%\Reg2Temp.reg" echo   00,73,00,74,00,6f,00,72,00,65,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   67,00,65,00,00,00,53,00,65,00,49,00,6d,00,70,00,65,00,72,00,73,00,6f,00,6e,\
>>"%Temp%\Reg2Temp.reg" echo   00,61,00,74,00,65,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,53,00,65,00,41,00,75,00,64,00,69,00,74,00,50,00,72,00,69,00,76,00,69,\
>>"%Temp%\Reg2Temp.reg" echo   00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,43,00,68,00,61,00,6e,00,67,00,\
>>"%Temp%\Reg2Temp.reg" echo   65,00,4e,00,6f,00,74,00,69,00,66,00,79,00,50,00,72,00,69,00,76,00,69,00,6c,\
>>"%Temp%\Reg2Temp.reg" echo   00,65,00,67,00,65,00,00,00,53,00,65,00,55,00,6e,00,64,00,6f,00,63,00,6b,00,\
>>"%Temp%\Reg2Temp.reg" echo   50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,44,\
>>"%Temp%\Reg2Temp.reg" echo   00,65,00,62,00,75,00,67,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,\
>>"%Temp%\Reg2Temp.reg" echo   65,00,00,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "FailureActions"=hex:00,00,00,00,00,00,00,00,00,00,00,00,03,00,00,00,14,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,02,00,00,00,60,ea,00,00,02,00,00,00,60,ea,00,00,02,00,00,00,60,ea,00,00
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\POWER\Parameters]
>>"%Temp%\Reg2Temp.reg" echo "ServiceDll"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,\
>>"%Temp%\Reg2Temp.reg" echo   00,74,00,25,00,5c,00,73,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,\
>>"%Temp%\Reg2Temp.reg" echo   75,00,6d,00,70,00,6f,00,2e,00,64,00,6c,00,6c,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "ServiceMain"="UmpoMain"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AudioSrv] 
>>"%Temp%\Reg2Temp.reg" echo "DependOnService"=hex(7):50,00,6c,00,75,00,67,00,50,00,6c,00,61,00,79,00,00,00,\ 
>>"%Temp%\Reg2Temp.reg" echo 52,00,70,00,63,00,53,00,73,00,00,00,00,00 
>>"%Temp%\Reg2Temp.reg" echo "Description"="管理基于 Windows 的程序的音频设备。如果此服务被终止，音频设备及其音效将不能正常工作。如果此服务被禁用，任何依赖它的服务将无法启动。" 
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Audio" 
>>"%Temp%\Reg2Temp.reg" echo "ErrorControl"=dword:00000001 
>>"%Temp%\Reg2Temp.reg" echo "Group"="AudioGroup" 
>>"%Temp%\Reg2Temp.reg" echo "ImagePath"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,\ 
>>"%Temp%\Reg2Temp.reg" echo 74,00,25,00,5c,00,53,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,73,\ 
>>"%Temp%\Reg2Temp.reg" echo 00,76,00,63,00,68,00,6f,00,73,00,74,00,2e,00,65,00,78,00,65,00,20,00,2d,00,\ 
>>"%Temp%\Reg2Temp.reg" echo 6b,00,20,00,6e,00,65,00,74,00,73,00,76,00,63,00,73,00,00,00 
>>"%Temp%\Reg2Temp.reg" echo "ObjectName"="LocalSystem" 
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000002 
>>"%Temp%\Reg2Temp.reg" echo "Type"=dword:00000020 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AudioSrv\Parameters] 
>>"%Temp%\Reg2Temp.reg" echo "ServiceDll"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,\ 
>>"%Temp%\Reg2Temp.reg" echo 00,74,00,25,00,5c,00,53,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,\ 
>>"%Temp%\Reg2Temp.reg" echo 61,00,75,00,64,00,69,00,6f,00,73,00,72,00,76,00,2e,00,64,00,6c,00,6c,00,00,\ 
>>"%Temp%\Reg2Temp.reg" echo 00 
>>"%Temp%\Reg2Temp.reg" echo "ServiceDllUnloadOnStop"=dword:00000001 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AudioSrv\Enum] 
>>"%Temp%\Reg2Temp.reg" echo "0"="Root\\LEGACY_AUDIOSRV\\0000" 
>>"%Temp%\Reg2Temp.reg" echo "Count"=dword:00000001 
>>"%Temp%\Reg2Temp.reg" echo "NextInstance"=dword:00000001 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AudioSrv]
>>"%Temp%\Reg2Temp.reg" echo "DependOnService"=hex(7):50,00,6c,00,75,00,67,00,50,00,6c,00,61,00,79,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo 52,00,70,00,63,00,53,00,73,00,00,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "Description"="管理基于 Windows 的程序的音频设备。如果此服务被终止，音频设备及其音效将不能正常工作。如果此服务被禁用，任何依赖它的服务将无法启动。"
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Audio"
>>"%Temp%\Reg2Temp.reg" echo "ErrorControl"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "Group"="AudioGroup"
>>"%Temp%\Reg2Temp.reg" echo "ImagePath"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,\
>>"%Temp%\Reg2Temp.reg" echo 74,00,25,00,5c,00,53,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,73,\
>>"%Temp%\Reg2Temp.reg" echo 00,76,00,63,00,68,00,6f,00,73,00,74,00,2e,00,65,00,78,00,65,00,20,00,2d,00,\
>>"%Temp%\Reg2Temp.reg" echo 6b,00,20,00,6e,00,65,00,74,00,73,00,76,00,63,00,73,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "ObjectName"="LocalSystem"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo "Type"=dword:00000020
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AudioSrv\Parameters]
>>"%Temp%\Reg2Temp.reg" echo "ServiceDll"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,\
>>"%Temp%\Reg2Temp.reg" echo 00,74,00,25,00,5c,00,53,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,\
>>"%Temp%\Reg2Temp.reg" echo 61,00,75,00,64,00,69,00,6f,00,73,00,72,00,76,00,2e,00,64,00,6c,00,6c,00,00,\
>>"%Temp%\Reg2Temp.reg" echo 00
>>"%Temp%\Reg2Temp.reg" echo "ServiceDllUnloadOnStop"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AudioSrv\Enum]
>>"%Temp%\Reg2Temp.reg" echo "0"="Root\\LEGACY_AUDIOSRV\\0000"
>>"%Temp%\Reg2Temp.reg" echo "Count"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "NextInstance"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\POWER]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="@%SystemRoot%\\system32\\umpo.dll,-100"
>>"%Temp%\Reg2Temp.reg" echo "Group"="Plugplay"
>>"%Temp%\Reg2Temp.reg" echo "ImagePath"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,\
>>"%Temp%\Reg2Temp.reg" echo   74,00,25,00,5c,00,73,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,73,\
>>"%Temp%\Reg2Temp.reg" echo   00,76,00,63,00,68,00,6f,00,73,00,74,00,2e,00,65,00,78,00,65,00,20,00,2d,00,\
>>"%Temp%\Reg2Temp.reg" echo   6b,00,20,00,44,00,63,00,6f,00,6d,00,4c,00,61,00,75,00,6e,00,63,00,68,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00
>>"%Temp%\Reg2Temp.reg" echo "Description"="@%SystemRoot%\\system32\\umpo.dll,-101"
>>"%Temp%\Reg2Temp.reg" echo "ObjectName"="LocalSystem"
>>"%Temp%\Reg2Temp.reg" echo "ErrorControl"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo "Type"=dword:00000020
>>"%Temp%\Reg2Temp.reg" echo "ServiceSidType"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "RequiredPrivileges"=hex(7):53,00,65,00,54,00,63,00,62,00,50,00,72,00,69,00,76,\
>>"%Temp%\Reg2Temp.reg" echo   00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,53,00,65,00,63,00,75,00,\
>>"%Temp%\Reg2Temp.reg" echo   72,00,69,00,74,00,79,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,53,00,65,00,41,00,73,00,73,00,69,00,67,00,6e,00,50,00,72,00,69,00,\
>>"%Temp%\Reg2Temp.reg" echo   6d,00,61,00,72,00,79,00,54,00,6f,00,6b,00,65,00,6e,00,50,00,72,00,69,00,76,\
>>"%Temp%\Reg2Temp.reg" echo   00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,54,00,61,00,6b,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   4f,00,77,00,6e,00,65,00,72,00,73,00,68,00,69,00,70,00,50,00,72,00,69,00,76,\
>>"%Temp%\Reg2Temp.reg" echo   00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,4c,00,6f,00,61,00,64,00,\
>>"%Temp%\Reg2Temp.reg" echo   44,00,72,00,69,00,76,00,65,00,72,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,\
>>"%Temp%\Reg2Temp.reg" echo   00,67,00,65,00,00,00,53,00,65,00,42,00,61,00,63,00,6b,00,75,00,70,00,50,00,\
>>"%Temp%\Reg2Temp.reg" echo   72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,52,00,65,\
>>"%Temp%\Reg2Temp.reg" echo   00,73,00,74,00,6f,00,72,00,65,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   67,00,65,00,00,00,53,00,65,00,49,00,6d,00,70,00,65,00,72,00,73,00,6f,00,6e,\
>>"%Temp%\Reg2Temp.reg" echo   00,61,00,74,00,65,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,53,00,65,00,41,00,75,00,64,00,69,00,74,00,50,00,72,00,69,00,76,00,69,\
>>"%Temp%\Reg2Temp.reg" echo   00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,43,00,68,00,61,00,6e,00,67,00,\
>>"%Temp%\Reg2Temp.reg" echo   65,00,4e,00,6f,00,74,00,69,00,66,00,79,00,50,00,72,00,69,00,76,00,69,00,6c,\
>>"%Temp%\Reg2Temp.reg" echo   00,65,00,67,00,65,00,00,00,53,00,65,00,55,00,6e,00,64,00,6f,00,63,00,6b,00,\
>>"%Temp%\Reg2Temp.reg" echo   50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,44,\
>>"%Temp%\Reg2Temp.reg" echo   00,65,00,62,00,75,00,67,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,\
>>"%Temp%\Reg2Temp.reg" echo   65,00,00,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "FailureActions"=hex:00,00,00,00,00,00,00,00,00,00,00,00,03,00,00,00,14,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,02,00,00,00,60,ea,00,00,02,00,00,00,60,ea,00,00,02,00,00,00,60,ea,00,00
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\POWER\Parameters]
>>"%Temp%\Reg2Temp.reg" echo "ServiceDll"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,\
>>"%Temp%\Reg2Temp.reg" echo   00,74,00,25,00,5c,00,73,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,\
>>"%Temp%\Reg2Temp.reg" echo   75,00,6d,00,70,00,6f,00,2e,00,64,00,6c,00,6c,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "ServiceMain"="UmpoMain"
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\services\POWER]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="@%SystemRoot%\\system32\\umpo.dll,-100"
>>"%Temp%\Reg2Temp.reg" echo "Group"="Plugplay"
>>"%Temp%\Reg2Temp.reg" echo "ImagePath"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,\
>>"%Temp%\Reg2Temp.reg" echo   74,00,25,00,5c,00,73,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,73,\
>>"%Temp%\Reg2Temp.reg" echo   00,76,00,63,00,68,00,6f,00,73,00,74,00,2e,00,65,00,78,00,65,00,20,00,2d,00,\
>>"%Temp%\Reg2Temp.reg" echo   6b,00,20,00,44,00,63,00,6f,00,6d,00,4c,00,61,00,75,00,6e,00,63,00,68,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00
>>"%Temp%\Reg2Temp.reg" echo "Description"="@%SystemRoot%\\system32\\umpo.dll,-101"
>>"%Temp%\Reg2Temp.reg" echo "ObjectName"="LocalSystem"
>>"%Temp%\Reg2Temp.reg" echo "ErrorControl"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo "Type"=dword:00000020
>>"%Temp%\Reg2Temp.reg" echo "ServiceSidType"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "RequiredPrivileges"=hex(7):53,00,65,00,54,00,63,00,62,00,50,00,72,00,69,00,76,\
>>"%Temp%\Reg2Temp.reg" echo   00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,53,00,65,00,63,00,75,00,\
>>"%Temp%\Reg2Temp.reg" echo   72,00,69,00,74,00,79,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,53,00,65,00,41,00,73,00,73,00,69,00,67,00,6e,00,50,00,72,00,69,00,\
>>"%Temp%\Reg2Temp.reg" echo   6d,00,61,00,72,00,79,00,54,00,6f,00,6b,00,65,00,6e,00,50,00,72,00,69,00,76,\
>>"%Temp%\Reg2Temp.reg" echo   00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,54,00,61,00,6b,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   4f,00,77,00,6e,00,65,00,72,00,73,00,68,00,69,00,70,00,50,00,72,00,69,00,76,\
>>"%Temp%\Reg2Temp.reg" echo   00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,4c,00,6f,00,61,00,64,00,\
>>"%Temp%\Reg2Temp.reg" echo   44,00,72,00,69,00,76,00,65,00,72,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,\
>>"%Temp%\Reg2Temp.reg" echo   00,67,00,65,00,00,00,53,00,65,00,42,00,61,00,63,00,6b,00,75,00,70,00,50,00,\
>>"%Temp%\Reg2Temp.reg" echo   72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,52,00,65,\
>>"%Temp%\Reg2Temp.reg" echo   00,73,00,74,00,6f,00,72,00,65,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   67,00,65,00,00,00,53,00,65,00,49,00,6d,00,70,00,65,00,72,00,73,00,6f,00,6e,\
>>"%Temp%\Reg2Temp.reg" echo   00,61,00,74,00,65,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,53,00,65,00,41,00,75,00,64,00,69,00,74,00,50,00,72,00,69,00,76,00,69,\
>>"%Temp%\Reg2Temp.reg" echo   00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,43,00,68,00,61,00,6e,00,67,00,\
>>"%Temp%\Reg2Temp.reg" echo   65,00,4e,00,6f,00,74,00,69,00,66,00,79,00,50,00,72,00,69,00,76,00,69,00,6c,\
>>"%Temp%\Reg2Temp.reg" echo   00,65,00,67,00,65,00,00,00,53,00,65,00,55,00,6e,00,64,00,6f,00,63,00,6b,00,\
>>"%Temp%\Reg2Temp.reg" echo   50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,44,\
>>"%Temp%\Reg2Temp.reg" echo   00,65,00,62,00,75,00,67,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,\
>>"%Temp%\Reg2Temp.reg" echo   65,00,00,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "FailureActions"=hex:00,00,00,00,00,00,00,00,00,00,00,00,03,00,00,00,14,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,02,00,00,00,60,ea,00,00,02,00,00,00,60,ea,00,00,02,00,00,00,60,ea,00,00
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\services\POWER\Parameters]
>>"%Temp%\Reg2Temp.reg" echo "ServiceDll"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,\
>>"%Temp%\Reg2Temp.reg" echo   00,74,00,25,00,5c,00,73,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,\
>>"%Temp%\Reg2Temp.reg" echo   75,00,6d,00,70,00,6f,00,2e,00,64,00,6c,00,6c,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "ServiceMain"="UmpoMain"
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\POWER]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="@%SystemRoot%\\system32\\umpo.dll,-100"
>>"%Temp%\Reg2Temp.reg" echo "Group"="Plugplay"
>>"%Temp%\Reg2Temp.reg" echo "ImagePath"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,\
>>"%Temp%\Reg2Temp.reg" echo   74,00,25,00,5c,00,73,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,73,\
>>"%Temp%\Reg2Temp.reg" echo   00,76,00,63,00,68,00,6f,00,73,00,74,00,2e,00,65,00,78,00,65,00,20,00,2d,00,\
>>"%Temp%\Reg2Temp.reg" echo   6b,00,20,00,44,00,63,00,6f,00,6d,00,4c,00,61,00,75,00,6e,00,63,00,68,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00
>>"%Temp%\Reg2Temp.reg" echo "Description"="@%SystemRoot%\\system32\\umpo.dll,-101"
>>"%Temp%\Reg2Temp.reg" echo "ObjectName"="LocalSystem"
>>"%Temp%\Reg2Temp.reg" echo "ErrorControl"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo "Type"=dword:00000020
>>"%Temp%\Reg2Temp.reg" echo "ServiceSidType"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "RequiredPrivileges"=hex(7):53,00,65,00,54,00,63,00,62,00,50,00,72,00,69,00,76,\
>>"%Temp%\Reg2Temp.reg" echo   00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,53,00,65,00,63,00,75,00,\
>>"%Temp%\Reg2Temp.reg" echo   72,00,69,00,74,00,79,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,00,53,00,65,00,41,00,73,00,73,00,69,00,67,00,6e,00,50,00,72,00,69,00,\
>>"%Temp%\Reg2Temp.reg" echo   6d,00,61,00,72,00,79,00,54,00,6f,00,6b,00,65,00,6e,00,50,00,72,00,69,00,76,\
>>"%Temp%\Reg2Temp.reg" echo   00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,54,00,61,00,6b,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   4f,00,77,00,6e,00,65,00,72,00,73,00,68,00,69,00,70,00,50,00,72,00,69,00,76,\
>>"%Temp%\Reg2Temp.reg" echo   00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,4c,00,6f,00,61,00,64,00,\
>>"%Temp%\Reg2Temp.reg" echo   44,00,72,00,69,00,76,00,65,00,72,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,\
>>"%Temp%\Reg2Temp.reg" echo   00,67,00,65,00,00,00,53,00,65,00,42,00,61,00,63,00,6b,00,75,00,70,00,50,00,\
>>"%Temp%\Reg2Temp.reg" echo   72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,52,00,65,\
>>"%Temp%\Reg2Temp.reg" echo   00,73,00,74,00,6f,00,72,00,65,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   67,00,65,00,00,00,53,00,65,00,49,00,6d,00,70,00,65,00,72,00,73,00,6f,00,6e,\
>>"%Temp%\Reg2Temp.reg" echo   00,61,00,74,00,65,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,53,00,65,00,41,00,75,00,64,00,69,00,74,00,50,00,72,00,69,00,76,00,69,\
>>"%Temp%\Reg2Temp.reg" echo   00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,43,00,68,00,61,00,6e,00,67,00,\
>>"%Temp%\Reg2Temp.reg" echo   65,00,4e,00,6f,00,74,00,69,00,66,00,79,00,50,00,72,00,69,00,76,00,69,00,6c,\
>>"%Temp%\Reg2Temp.reg" echo   00,65,00,67,00,65,00,00,00,53,00,65,00,55,00,6e,00,64,00,6f,00,63,00,6b,00,\
>>"%Temp%\Reg2Temp.reg" echo   50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,00,00,00,53,00,65,00,44,\
>>"%Temp%\Reg2Temp.reg" echo   00,65,00,62,00,75,00,67,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,\
>>"%Temp%\Reg2Temp.reg" echo   65,00,00,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "FailureActions"=hex:00,00,00,00,00,00,00,00,00,00,00,00,03,00,00,00,14,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,02,00,00,00,60,ea,00,00,02,00,00,00,60,ea,00,00,02,00,00,00,60,ea,00,00
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\POWER\Parameters]
>>"%Temp%\Reg2Temp.reg" echo "ServiceDll"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,\
>>"%Temp%\Reg2Temp.reg" echo   00,74,00,25,00,5c,00,73,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,\
>>"%Temp%\Reg2Temp.reg" echo   75,00,6d,00,70,00,6f,00,2e,00,64,00,6c,00,6c,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "ServiceMain"="UmpoMain"
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Audiosrv]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="@%SystemRoot%\\system32\\audiosrv.dll,-200"
>>"%Temp%\Reg2Temp.reg" echo "Group"="AudioGroup"
>>"%Temp%\Reg2Temp.reg" echo "ImagePath"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,\
>>"%Temp%\Reg2Temp.reg" echo   74,00,25,00,5c,00,53,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,73,\
>>"%Temp%\Reg2Temp.reg" echo   00,76,00,63,00,68,00,6f,00,73,00,74,00,2e,00,65,00,78,00,65,00,20,00,2d,00,\
>>"%Temp%\Reg2Temp.reg" echo   6b,00,20,00,4c,00,6f,00,63,00,61,00,6c,00,53,00,65,00,72,00,76,00,69,00,63,\
>>"%Temp%\Reg2Temp.reg" echo   00,65,00,4e,00,65,00,74,00,77,00,6f,00,72,00,6b,00,52,00,65,00,73,00,74,00,\
>>"%Temp%\Reg2Temp.reg" echo   72,00,69,00,63,00,74,00,65,00,64,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "Description"="@%SystemRoot%\\System32\\audiosrv.dll,-201"
>>"%Temp%\Reg2Temp.reg" echo "ObjectName"="NT AUTHORITY\\LocalService"
>>"%Temp%\Reg2Temp.reg" echo "ErrorControl"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo "Type"=dword:00000020
>>"%Temp%\Reg2Temp.reg" echo "DependOnService"=hex(7):41,00,75,00,64,00,69,00,6f,00,45,00,6e,00,64,00,70,00,\
>>"%Temp%\Reg2Temp.reg" echo   6f,00,69,00,6e,00,74,00,42,00,75,00,69,00,6c,00,64,00,65,00,72,00,00,00,52,\
>>"%Temp%\Reg2Temp.reg" echo   00,70,00,63,00,53,00,73,00,00,00,4d,00,4d,00,43,00,53,00,53,00,00,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "ServiceSidType"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "RequiredPrivileges"=hex(7):53,00,65,00,43,00,68,00,61,00,6e,00,67,00,65,00,4e,\
>>"%Temp%\Reg2Temp.reg" echo   00,6f,00,74,00,69,00,66,00,79,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   67,00,65,00,00,00,53,00,65,00,49,00,6d,00,70,00,65,00,72,00,73,00,6f,00,6e,\
>>"%Temp%\Reg2Temp.reg" echo   00,61,00,74,00,65,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,53,00,65,00,49,00,6e,00,63,00,72,00,65,00,61,00,73,00,65,00,57,00,6f,\
>>"%Temp%\Reg2Temp.reg" echo   00,72,00,6b,00,69,00,6e,00,67,00,53,00,65,00,74,00,50,00,72,00,69,00,76,00,\
>>"%Temp%\Reg2Temp.reg" echo   69,00,6c,00,65,00,67,00,65,00,00,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "FailureActions"=hex:00,00,00,00,00,00,00,00,00,00,00,00,03,00,00,00,14,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,01,00,00,00,60,ea,00,00,01,00,00,00,c0,d4,01,00,00,00,00,00,00,00,00,00
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Audiosrv\Parameters]
>>"%Temp%\Reg2Temp.reg" echo "ServiceDll"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,\
>>"%Temp%\Reg2Temp.reg" echo   00,74,00,25,00,5c,00,53,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,\
>>"%Temp%\Reg2Temp.reg" echo   41,00,75,00,64,00,69,00,6f,00,73,00,72,00,76,00,2e,00,64,00,6c,00,6c,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00
>>"%Temp%\Reg2Temp.reg" echo "ServiceDllUnloadOnStop"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Audiosrv\Enum]
>>"%Temp%\Reg2Temp.reg" echo "0"="Root\\LEGACY_AUDIOSRV\\0000"
>>"%Temp%\Reg2Temp.reg" echo "Count"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "NextInstance"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Audiosrv]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="@%SystemRoot%\\system32\\audiosrv.dll,-200"
>>"%Temp%\Reg2Temp.reg" echo "Group"="AudioGroup"
>>"%Temp%\Reg2Temp.reg" echo "ImagePath"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,\
>>"%Temp%\Reg2Temp.reg" echo   74,00,25,00,5c,00,53,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,73,\
>>"%Temp%\Reg2Temp.reg" echo   00,76,00,63,00,68,00,6f,00,73,00,74,00,2e,00,65,00,78,00,65,00,20,00,2d,00,\
>>"%Temp%\Reg2Temp.reg" echo   6b,00,20,00,4c,00,6f,00,63,00,61,00,6c,00,53,00,65,00,72,00,76,00,69,00,63,\
>>"%Temp%\Reg2Temp.reg" echo   00,65,00,4e,00,65,00,74,00,77,00,6f,00,72,00,6b,00,52,00,65,00,73,00,74,00,\
>>"%Temp%\Reg2Temp.reg" echo   72,00,69,00,63,00,74,00,65,00,64,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "Description"="@%SystemRoot%\\System32\\audiosrv.dll,-201"
>>"%Temp%\Reg2Temp.reg" echo "ObjectName"="NT AUTHORITY\\LocalService"
>>"%Temp%\Reg2Temp.reg" echo "ErrorControl"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo "Type"=dword:00000020
>>"%Temp%\Reg2Temp.reg" echo "DependOnService"=hex(7):41,00,75,00,64,00,69,00,6f,00,45,00,6e,00,64,00,70,00,\
>>"%Temp%\Reg2Temp.reg" echo   6f,00,69,00,6e,00,74,00,42,00,75,00,69,00,6c,00,64,00,65,00,72,00,00,00,52,\
>>"%Temp%\Reg2Temp.reg" echo   00,70,00,63,00,53,00,73,00,00,00,4d,00,4d,00,43,00,53,00,53,00,00,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "ServiceSidType"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "RequiredPrivileges"=hex(7):53,00,65,00,43,00,68,00,61,00,6e,00,67,00,65,00,4e,\
>>"%Temp%\Reg2Temp.reg" echo   00,6f,00,74,00,69,00,66,00,79,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   67,00,65,00,00,00,53,00,65,00,49,00,6d,00,70,00,65,00,72,00,73,00,6f,00,6e,\
>>"%Temp%\Reg2Temp.reg" echo   00,61,00,74,00,65,00,50,00,72,00,69,00,76,00,69,00,6c,00,65,00,67,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,00,53,00,65,00,49,00,6e,00,63,00,72,00,65,00,61,00,73,00,65,00,57,00,6f,\
>>"%Temp%\Reg2Temp.reg" echo   00,72,00,6b,00,69,00,6e,00,67,00,53,00,65,00,74,00,50,00,72,00,69,00,76,00,\
>>"%Temp%\Reg2Temp.reg" echo   69,00,6c,00,65,00,67,00,65,00,00,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "FailureActions"=hex:00,00,00,00,00,00,00,00,00,00,00,00,03,00,00,00,14,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00,01,00,00,00,60,ea,00,00,01,00,00,00,c0,d4,01,00,00,00,00,00,00,00,00,00
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Audiosrv\Parameters]
>>"%Temp%\Reg2Temp.reg" echo "ServiceDll"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,\
>>"%Temp%\Reg2Temp.reg" echo   00,74,00,25,00,5c,00,53,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,\
>>"%Temp%\Reg2Temp.reg" echo   41,00,75,00,64,00,69,00,6f,00,73,00,72,00,76,00,2e,00,64,00,6c,00,6c,00,00,\
>>"%Temp%\Reg2Temp.reg" echo   00
>>"%Temp%\Reg2Temp.reg" echo "ServiceDllUnloadOnStop"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Audiosrv\Enum]
>>"%Temp%\Reg2Temp.reg" echo "0"="Root\\LEGACY_AUDIOSRV\\0000"
>>"%Temp%\Reg2Temp.reg" echo "Count"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "NextInstance"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power]
>>"%Temp%\Reg2Temp.reg" echo "AwayModeEnabled"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "AwayModeEn"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;禁用自动更新
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate]
>>"%Temp%\Reg2Temp.reg" echo "ElevateNonAdmins"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "AcceptTrustedPublisherCerts"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU]
>>"%Temp%\Reg2Temp.reg" echo "NoAutoRebootWithLoggedOnUsers"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "RebootRelaunchTimeoutEnabled"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "RebootRelaunchTimeout"=dword:0000000a
>>"%Temp%\Reg2Temp.reg" echo "NoAutoUpdate"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "IncludeRecommendedUpdates"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "EnableFeaturedSoftware"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "UseWUServer"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;进入win7后自动打开数字小键盘
>>"%Temp%\Reg2Temp.reg" echo [HKEY_USERS\.DEFAULT\Control Panel\Keyboard]
>>"%Temp%\Reg2Temp.reg" echo "InitialKeyboardIndicators"="2"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;关闭预读以减少开机进程条等待时间加快启动
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters]
>>"%Temp%\Reg2Temp.reg" echo "EnablePrefetcher"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters]
>>"%Temp%\Reg2Temp.reg" echo "EnablePrefetcher"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;禁止我最近的文档记录内容
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "NoRecentDocsHistory"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]
>>"%Temp%\Reg2Temp.reg" echo "Start_ShowRecentDocs"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "Start_TrackDocs"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;禁止U盘光盘等所有磁盘自动运行
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "NoDriveTypeAutoRun"=dword:000000ff
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "NoDriveTypeAutoRun"=dword:000000ff
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\cdrom]
>>"%Temp%\Reg2Temp.reg" echo "Autorun"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\cdrom]
>>"%Temp%\Reg2Temp.reg" echo "Autorun"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;在IE的新标签中打开链接窗口页面
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "PopupsUseNewWindow"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;加快结束出错程序等待时间
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Control Panel\Desktop]
>>"%Temp%\Reg2Temp.reg" echo "HungAppTimeout"="500"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;加快关闭服务等待时间
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control]
>>"%Temp%\Reg2Temp.reg" echo "WaitToKillServiceTimeout"="2000"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control]
>>"%Temp%\Reg2Temp.reg" echo "WaitToKillServiceTimeout"="2000"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;加快关闭程序等待时间
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Control Panel\Desktop]
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;为右键加上复制到和移动到键
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\Copy To]
>>"%Temp%\Reg2Temp.reg" echo @="{C2FBB630-2971-11D1-A18C-00C04FD75D13}"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\Move To]
>>"%Temp%\Reg2Temp.reg" echo @="{C2FBB631-2971-11D1-A18C-00C04FD75D13}"
>>"%Temp%\Reg2Temp.reg" echo "WaitToKillAppTimeout"="2000"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;win7睡眠时下载设置方法 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power]
>>"%Temp%\Reg2Temp.reg" echo "AwayModeEnabled"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;去除右键菜单中“通过QQ发送到我的手机”
>>"%Temp%\Reg2Temp.reg" echo [-HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers\QQShellExt]
>>"%Temp%\Reg2Temp.reg" echo  
>>"%Temp%\Reg2Temp.reg" echo @="{53D2405C-48AB-4C8A-8F59-CE0610F13BBC}"
>>"%Temp%\Reg2Temp.reg" echo  
>>"%Temp%\Reg2Temp.reg" echo [-HKEY_CLASSES_ROOT\Folder\ShellEx\ContextMenuHandlers\QQShellExt]
>>"%Temp%\Reg2Temp.reg" echo  
>>"%Temp%\Reg2Temp.reg" echo @="{53D2405C-48AB-4C8A-8F59-CE0610F13BBC}"
>>"%Temp%\Reg2Temp.reg" echo  
>>"%Temp%\Reg2Temp.reg" echo [-HKEY_CLASSES_ROOT\lnkfile\shellex\ContextMenuHandlers\QQShellExt]
>>"%Temp%\Reg2Temp.reg" echo  
>>"%Temp%\Reg2Temp.reg" echo @="{53D2405C-48AB-4C8A-8F59-CE0610F13BBC}"
>>"%Temp%\Reg2Temp.reg" echo  
>>"%Temp%\Reg2Temp.reg" echo [-HKEY_CLASSES_ROOT\lnkfile\shellex\ContextMenuHandlers\QQShellExt64]
>>"%Temp%\Reg2Temp.reg" echo  
>>"%Temp%\Reg2Temp.reg" echo @="{5D639F05-2181-4B58-A850-9F7E5C79D5DE}"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{69982763-1739-5173-9517-395173173951}\Shell\Open\Command]
>>"%Temp%\Reg2Temp.reg" echo @="C:\\Program Files\\Internet Explorer\\IEXPLORE.EXE https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;去除PPTV 搜狐影音 pps自动运行
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]
>>"%Temp%\Reg2Temp.reg" echo "SohuVA"=""
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run]
>>"%Temp%\Reg2Temp.reg" echo "PPAP"=""
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run]
>>"%Temp%\Reg2Temp.reg" echo "HCDNClient"=hex(2):00,00
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;取消自检
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager] 
>>"%Temp%\Reg2Temp.reg" echo "BootExecute"=hex(7):00,00 
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;解除百度：
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\Extension Compatibility\{B580CF65-E151-49C3-B73F-70B13FCA8E86}]
>>"%Temp%\Reg2Temp.reg" echo "DllName"=""
>>"%Temp%\Reg2Temp.reg" echo "FWLink"=""
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\SearchScopes\{B8E20CD7-BAC2-4820-9AA6-1060B3AF25E2}]
>>"%Temp%\Reg2Temp.reg" echo "SuggestionsURL_JSON"=""
>>"%Temp%\Reg2Temp.reg" echo "URL"=""
>>"%Temp%\Reg2Temp.reg" echo "FaviconURL"=""
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"=""
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\SearchScopes\{B8E20CD7-BAC2-4820-9AA6-1060B3AF25E2}]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"=""
>>"%Temp%\Reg2Temp.reg" echo "URL"=""
>>"%Temp%\Reg2Temp.reg" echo "OSDFileURL"=""
>>"%Temp%\Reg2Temp.reg" echo "FaviconURL"=""
>>"%Temp%\Reg2Temp.reg" echo "SuggestionsURL_JSON"=""
>>"%Temp%\Reg2Temp.reg" echo "SortIndex"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Extension Compatibility\{77FEF28E-EB96-44FF-B511-3185DEA48697}]
>>"%Temp%\Reg2Temp.reg" echo "DllName"=""
>>"%Temp%\Reg2Temp.reg" echo "FWLink"=""
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Extension Compatibility\{B580CF65-E151-49C3-B73F-70B13FCA8E86}]
>>"%Temp%\Reg2Temp.reg" echo "DllName"=""
>>"%Temp%\Reg2Temp.reg" echo "FWLink"=""
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Baidu\BaiduToolbar]
>>"%Temp%\Reg2Temp.reg" echo "ID"=""
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\Extension Compatibility\{77FEF28E-EB96-44FF-B511-3185DEA48697}]
>>"%Temp%\Reg2Temp.reg" echo "DllName"=""
>>"%Temp%\Reg2Temp.reg" echo "FWLink"=""
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo "Start Page"=https://www.2345.com/?1538""
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo 禁止更改主页
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel]
>>"%Temp%\Reg2Temp.reg" echo "HOMEPAGE"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo 删除我的电脑里出现的爱奇艺PPS影音图标
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [-HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{CF3CDEFB-31BE-43AE-B064-B9C62C883259}]
>>"%Temp%\Reg2Temp.reg" echo @="爱奇艺PPS影音"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo 删除我的电脑里出现的PPTV云点播系统盘影音图标
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [-HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{FBEF9AF3-3978-49E3-9DD4-F5361E84ED14}]
>>"%Temp%\Reg2Temp.reg" echo @="PPTV云点播系统盘"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo 删除PPTV自运行
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run]
>>"%Temp%\Reg2Temp.reg" echo "PPLiveAP"=-
>>"%Temp%\Reg2Temp.reg" echo "YoukuMediaCenter"=-
>>"%Temp%\Reg2Temp.reg" echo "PPAP"=-
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo 删除爱奇艺自运行
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run]
>>"%Temp%\Reg2Temp.reg" echo "HCDNClient"=-
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo 关闭升级win10提醒
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate]
>>"%Temp%\Reg2Temp.reg" echo "DisableOSUpgrade"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\SearchScopes\{B2D17A31-2642-4D03-9D1F-ABD3BE1DCC4E}]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="52Sdjk.com"
>>"%Temp%\Reg2Temp.reg" echo "URL"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "OSDFileURL"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "SuggestionsURL_JSON"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;设置系统更新后挂起、不自动重启、通知而不自动安装
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU]
>>"%Temp%\Reg2Temp.reg" echo "NoAutoRebootWithLoggedOnUsers"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "AUOptions"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo "AutoInstallMinorUpdates"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "NoAutoRebootWithLoggedOnUsers"=dword:00000000 
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;屏蔽IE10更新
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Setup\10.0]
>>"%Temp%\Reg2Temp.reg" echo "DoNotAllowIE10"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;屏蔽IE19更新
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Setup\9.0]
>>"%Temp%\Reg2Temp.reg" echo "DoNotOfferIE90AU"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;屏蔽IE11更新
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Setup\11.0]
>>"%Temp%\Reg2Temp.reg" echo "DoNotAllowIE11"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;设置OEM
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation]
>>"%Temp%\Reg2Temp.reg" echo "SupportURL"="http://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo.
start /wait regedit /s "%Temp%\Reg2Temp.reg
del /q "%Temp%\Reg2Temp.reg"
