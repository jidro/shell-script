@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c ""%~s0"" ::","","runas",0)(window.close)>nul 2>nul&&exit
>>"%Temp%\Reg2Temp.reg" echo Windows Registry Editor Version 5.00
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;==============ϵͳ����==============
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;�ҵĵ����Ҽ���ǿ�˵�
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\DevMgr]
>>"%Temp%\Reg2Temp.reg" echo ;@=hex(2):40,00,25,00,77,00,69,00,6e,00,64,00,69,00,72,00,25,00,5c,00,73,00,79,\
>>"%Temp%\Reg2Temp.reg" echo ;  00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,64,00,65,00,76,00,6d,00,67,00,\
>>"%Temp%\Reg2Temp.reg" echo ;  72,00,2e,00,64,00,6c,00,6c,00,2c,00,2d,00,34,00,00,00
>>"%Temp%\Reg2Temp.reg" echo @="�豸������"
>>"%Temp%\Reg2Temp.reg" echo "SuppressionPolicy"=dword:4000003c
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\DevMgr\command]
>>"%Temp%\Reg2Temp.reg" echo @=hex(2):25,00,77,00,69,00,6e,00,64,00,69,00,72,00,25,00,5c,00,73,00,79,00,73,\
>>"%Temp%\Reg2Temp.reg" echo   00,74,00,65,00,6d,00,33,00,32,00,5c,00,6d,00,6d,00,63,00,2e,00,65,00,78,00,\
>>"%Temp%\Reg2Temp.reg" echo   65,00,20,00,2f,00,73,00,20,00,25,00,77,00,69,00,6e,00,64,00,69,00,72,00,25,\
>>"%Temp%\Reg2Temp.reg" echo   00,5c,00,73,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,64,00,65,00,\
>>"%Temp%\Reg2Temp.reg" echo   76,00,6d,00,67,00,6d,00,74,00,2e,00,6d,00,73,00,63,00,00,00
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ����ƽ��
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
>>"%Temp%\Reg2Temp.reg" echo @="����Աȡ������Ȩ" 
>>"%Temp%\Reg2Temp.reg" echo "NoWorkingDirectory"="" 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\*\shell\runas\command] 
>>"%Temp%\Reg2Temp.reg" echo @="cmd.exe /c takeown /f \"%1\" & icacls \"%1\" /grant administrators:F" 
>>"%Temp%\Reg2Temp.reg" echo "IsolatedCommand"="cmd.exe /c takeown /f \"%1\" & icacls \"%1\" /grant administrators:F" 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\exefile\shell\runas2] 
>>"%Temp%\Reg2Temp.reg" echo @="����Աȡ������Ȩ" 
>>"%Temp%\Reg2Temp.reg" echo "NoWorkingDirectory"="" 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\exefile\shell\runas2\command] 
>>"%Temp%\Reg2Temp.reg" echo @="cmd.exe /c takeown /f \"%1\" & icacls \"%1\" /grant administrators:F" 
>>"%Temp%\Reg2Temp.reg" echo "IsolatedCommand"="cmd.exe /c takeown /f \"%1\" & icacls \"%1\" /grant administrators:F" 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\Directory\shell\runas] 
>>"%Temp%\Reg2Temp.reg" echo @="����Աȡ������Ȩ" 
>>"%Temp%\Reg2Temp.reg" echo "NoWorkingDirectory"="" 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\Directory\shell\runas\command] 
>>"%Temp%\Reg2Temp.reg" echo @="cmd.exe /c takeown /f \"%1\" /r /d y & icacls \"%1\" /grant administrators:F /t" 
>>"%Temp%\Reg2Temp.reg" echo "IsolatedCommand"="cmd.exe /c takeown /f \"%1\" /r /d y & icacls \"%1\" /grant administrators:F /t"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]
>>"%Temp%\Reg2Temp.reg" echo "Start_ShowPrinters"=dword:00000001     ;"��ӡ���ʹ���"-��ʾΪ���� 
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;�Ҽ������ڴ˴���������ʾ��
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Folder\shell\OpenDOSBox]
>>"%Temp%\Reg2Temp.reg" echo @="�ڴ˴���������ʾ��"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Folder\shell\OpenDOSBox\Command]
>>"%Temp%\Reg2Temp.reg" echo @="CMD.EXE /K CD %1"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation]
>>"%Temp%\Reg2Temp.reg" echo "Manufacturer"="���������̳��52sdjk.com "
>>"%Temp%\Reg2Temp.reg" echo "Model"="��רҵ�������Դ��������Լ���������վ��"
>>"%Temp%\Reg2Temp.reg" echo "SupportURL"="http://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "SupportPhone"="������ַ��52Sdjk.cn"
>>"%Temp%\Reg2Temp.reg" echo "SupportHours"=" QQ:420298427  634066211"
>>"%Temp%\Reg2Temp.reg" echo "Logo"="C:\\Windows\\System32\\oemlogo.bmp"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;7.ȡ�����г���ǰ��ȫ����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Associations]
>>"%Temp%\Reg2Temp.reg" echo "ModRiskFileTypes"=".bat;.exe;.reg;.vbs" 
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;�Ҽ��˵��м��ϼ��±�����
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\*\shell\Notepad]
>>"%Temp%\Reg2Temp.reg" echo @="�ü��±��򿪸��ļ�"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\*\shell\Notepad\Command]
>>"%Temp%\Reg2Temp.reg" echo @="notepad %1"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;DLL�ļ��Ҽ�����(��)ע��˵�
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\dllfile\shell\RegServer]
>>"%Temp%\Reg2Temp.reg" echo @="ע�� Dll"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\dllfile\shell\RegServer\command]
>>"%Temp%\Reg2Temp.reg" echo @="regsvr32.exe \"%1\""
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\dllfile\shell\UnregRegServer]
>>"%Temp%\Reg2Temp.reg" echo @="��ע�� Dll"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\dllfile\shell\UnregRegServer\command]
>>"%Temp%\Reg2Temp.reg" echo @="regsvr32.exe /u \"%1\""
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;OCX�ļ��Ҽ�����(��)ע��˵�
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
>>"%Temp%\Reg2Temp.reg" echo ;��ֹU�̵����д����Զ�����(�����������Զ�����)
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
>>"%Temp%\Reg2Temp.reg" echo ;���ء��������ġ�����ͼ��
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "HideSCAHealth"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;�ڵ����Ľ����д��ļ��д���
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]
>>"%Temp%\Reg2Temp.reg" echo "SeparateProcess"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;��ʼ�˵���ʾ��������
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
>>"%Temp%\Reg2Temp.reg" echo ;���Ǵ��ڴ���ж�����õĶ�̬����
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\explorer]
>>"%Temp%\Reg2Temp.reg" echo "AlwaysUnloadDll"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;�� DOS ��֧�ֳ��ļ���
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Command Processor] 
>>"%Temp%\Reg2Temp.reg" echo "CompletionChar"=dword:00000009
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����CMD�°�Tab���Զ���ɹ���
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Command Processor] 
>>"%Temp%\Reg2Temp.reg" echo "CompletionChar"=dword:9 
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;13�����������ص�������
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\CTF\MSUTB]
>>"%Temp%\Reg2Temp.reg" echo "ShowDeskBand"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\CTF\LangBar]
>>"%Temp%\Reg2Temp.reg" echo "ShowStatus"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo "ExtraIconsOnMinimized"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;14��ȡ���������ϵİ�����ť
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\CTF\LangBar\ItemState\{ED9D5450-EBE6-4255-8289-F8A31E687228}]
>>"%Temp%\Reg2Temp.reg" echo "DemoteLevel"=dword:00000003
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;15����װ����ʱ������ Windows Update
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DriverSearching]
>>"%Temp%\Reg2Temp.reg" echo "DontSearchWindowsUpdate"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "DontPromptForWindowsUpdate"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;16������������ʾ����ͼ�� 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Applets\SysTray] 
>>"%Temp%\Reg2Temp.reg" echo "Services"=dword:0000001f 
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;��ֹ��������ĵ���¼
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "NoRecentDocsHistory"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]
>>"%Temp%\Reg2Temp.reg" echo "Start_ShowRecentDocs"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "Start_TrackDocs"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;��ֹ��Դ���������Ͻ��������������¼
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "DisableSearchBoxSuggestions"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����ʱ��ֹ���л�ӭ����
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run]
>>"%Temp%\Reg2Temp.reg" echo "WindowsWelcomeCenter"=-
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;�����ڼ��ֹ����������Լӿ�����
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System]
>>"%Temp%\Reg2Temp.reg" echo "SynchronousUserGroupPolicy"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "SynchronousMachineGroupPolicy"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;��ֹ��¼�󴴽��ɹ���¼���湦��
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon]
>>"%Temp%\Reg2Temp.reg" echo "ReportBootOk"="0"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����Դ����������ʱ���Զ�������Դ������
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Winlogon]
>>"%Temp%\Reg2Temp.reg" echo "AutoRestartShell"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;�رճ������������
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat]
>>"%Temp%\Reg2Temp.reg" echo "DisablePCA"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;�ر�Ԥ���Լ��ٿ����������ȴ�ʱ��ӿ�����
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters]
>>"%Temp%\Reg2Temp.reg" echo "EnablePrefetcher"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters]
>>"%Temp%\Reg2Temp.reg" echo "EnablePrefetcher"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;ȥ����ݼ�С��ͷ
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\lnkfile] 
>>"%Temp%\Reg2Temp.reg" echo "IsShortcut"=- 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\piffile] 
>>"%Temp%\Reg2Temp.reg" echo "IsShortcut"=- 
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;ɾ���Ҽ��½����İ���ϵ��BMP
>>"%Temp%\Reg2Temp.reg" echo [-HKEY_CLASSES_ROOT\Briefcase]
>>"%Temp%\Reg2Temp.reg" echo [-HKEY_CLASSES_ROOT\.contact]
>>"%Temp%\Reg2Temp.reg" echo [-HKEY_CLASSES_ROOT\.bmp]
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;ɾ��ͼ���ݷ�ʽ������
>>"%Temp%\Reg2Temp.reg" echo [HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "Link"=hex:00,00,00,00
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "Link"=hex:00,00,00,00
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����ɾ��IE�����ļ���
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Toolbar]
>>"%Temp%\Reg2Temp.reg" echo "LinksFolderName"=" "
>>"%Temp%\Reg2Temp.reg" echo "Locked"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "ShowDiscussionButton"="Yes"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;�ӿ쿪���ٶ�
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
>>"%Temp%\Reg2Temp.reg" echo ;������ʾ���ͼ��
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel]
>>"%Temp%\Reg2Temp.reg" echo "{20D04FE0-3AEA-1069-A2D8-08002B30309D}"=dword:00000000  ;������ʾ�����
>>"%Temp%\Reg2Temp.reg" echo "{59031a47-3f72-44a7-89c5-5595fe6b30ee}"=dword:00000000  ;������ʾ�û�
>>"%Temp%\Reg2Temp.reg" echo "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}"=dword:00000000  ;������ʾ����
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�ӿ�ػ��ٶ�
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
>>"%Temp%\Reg2Temp.reg" echo ;�Զ��ر�ֹͣ��Ӧ�ĳ���
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Control Panel\Desktop]
>>"%Temp%\Reg2Temp.reg" echo "AutoEndTasks"="1"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;�ر�Ĭ�Ϲ���
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters] 
>>"%Temp%\Reg2Temp.reg" echo "AutoShareServer"=dword:00000000 
>>"%Temp%\Reg2Temp.reg" echo "AutoSharewks"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;��ֹ�Զ�����
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
>>"%Temp%\Reg2Temp.reg" echo ;���ü��±���ʾ״̬��
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\NotePad]
>>"%Temp%\Reg2Temp.reg" echo "StatusBar"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;���±��Զ�����
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\NotePad]
>>"%Temp%\Reg2Temp.reg" echo "fwrap"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;�����״δ�WMPʱ����Э�鴰��
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsMediaPlayer]
>>"%Temp%\Reg2Temp.reg" echo "GroupPrivacyAcceptance"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;ϵͳʧ��
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CrashControl]
>>"%Temp%\Reg2Temp.reg" echo ;�����¼�д��ϵͳ�ռ�
>>"%Temp%\Reg2Temp.reg" echo "LogEvent"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;�����Զ���������
>>"%Temp%\Reg2Temp.reg" echo "AutoReboot"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;��д�������Ϣ
>>"%Temp%\Reg2Temp.reg" echo "Overwrite"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "CrashDumpEnabled"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\CrashControl]
>>"%Temp%\Reg2Temp.reg" echo "AutoReboot"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;�����Զ�ˢ�£���ֹ����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon]
>>"%Temp%\Reg2Temp.reg" echo "AutoRestartShell"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;���ǰ̨�������ʾ�ٶ�
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Control Panel\Desktop]
>>"%Temp%\Reg2Temp.reg" echo "ForegroundLockTimeout"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�϶�����ʱ������ʾ�������ݣ��������϶�����ʱ���²�Ӱ��ס����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Control Panel\Desktop]
>>"%Temp%\Reg2Temp.reg" echo "DragFullWindows"="0"
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;���Ǵ��ڴ���ж�����õĶ�̬����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\explorer]
>>"%Temp%\Reg2Temp.reg" echo "AlwaysUnloadDll"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;��ֹ��¼�󴴽��ɹ���¼���湦��
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon]
>>"%Temp%\Reg2Temp.reg" echo "ReportBootOk"="0"
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;����ڴ��ڱ���ʹ�õ�DLL�ļ�
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\explorer\AlwaysUnloadDLL]
>>"%Temp%\Reg2Temp.reg" echo @="1"
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;����Դ����������ʱ���Զ�������Դ������
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
>>"%Temp%\Reg2Temp.reg" echo ;�趨����ʱ������
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
>>"%Temp%\Reg2Temp.reg" echo ;�������±����Զ�����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Notepad]
>>"%Temp%\Reg2Temp.reg" echo "fWrap"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�ü��±���NFO�ļ�
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.nfo]
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.nfo\OpenWithList]
>>"%Temp%\Reg2Temp.reg" echo "a"="NOTEPAD.EXE"
>>"%Temp%\Reg2Temp.reg" echo "MRUList"="a"
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.nfo\OpenWithProgids]
>>"%Temp%\Reg2Temp.reg" echo "MSInfoFile"=hex(0):
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.nfo\UserChoice]
>>"%Temp%\Reg2Temp.reg" echo "Progid"="Applications\\notepad.exe"
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;��Դ������������С��ʱ��ʾ����·��
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState]
>>"%Temp%\Reg2Temp.reg" echo "FullPath"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;��Windows��⵽ͨ�Żʱ����ִ���κβ���
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Multimedia\Audio]
>>"%Temp%\Reg2Temp.reg" echo "UserDuckingPreference"=dword:00000003
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�����ڶ����ؼ���Ԫ��
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ComboBoxAnimation]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�������Ϳ�ʼ�˵��еĶ���
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
>>"%Temp%\Reg2Temp.reg" echo ;ƽ�������б��
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListBoxSmoothScrolling]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;ƽ����Ļ�����Ե
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\FontSmoothing]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;Ϊÿ���ļ�������ʹ��һ�ֱ���ͼƬ
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewWatermark]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;��ʾ��͸����ѡ�񳤷���
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewAlphaSelect]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;��ʾ��͸����ѡ�񳤷���
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\SelectionFade]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�ڴ�������ʾ��Ӱ
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DropShadow]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�����ָ������ʾ��Ӱ
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\CursorShadow]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;����󻯺���С��ʱ��ʾ��̬����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\AnimateMinMax]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�϶�ʱ��ʾ��������
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DragFullWindows]
>>"%Temp%\Reg2Temp.reg" echo "DefaultApplied"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;��������ʱ�䴦��ʾ����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Control Panel\International]
>>"%Temp%\Reg2Temp.reg" echo "sLongDate"="yyyy'��'M'��'d'��' dddd"
>>"%Temp%\Reg2Temp.reg" echo "sShortDate"="yyyy-M-d dddd"
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;���ز�������
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "HideSCAHealth"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;�رմ��ڵĶ���Ч��������ͼ��-���⻻��
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics]
>>"%Temp%\Reg2Temp.reg" echo "MinAnimate"="1"
>>"%Temp%\Reg2Temp.reg" echo "IconTitleWrap"="1"
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;����ѡ��->���� Windows ѡ��������������á�
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects]
>>"%Temp%\Reg2Temp.reg" echo "VisualFXSetting"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�����ڶ����ؼ���Ԫ��
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ComboBoxAnimation]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�������Ϳ�ʼ�˵��еĶ���
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
>>"%Temp%\Reg2Temp.reg" echo ;ƽ�������б��
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListBoxSmoothScrolling]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;ƽ����Ļ�����Ե
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\FontSmoothing]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultByFontTest"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;Ϊÿ���ļ�������ʹ��һ�ֱ���ͼƬ
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewWatermark]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;��ʾ��͸����ѡ�񳤷���
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewAlphaSelect]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultByAlphaTest"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;��ʾ��͸����ѡ�񳤷���
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\SelectionFade]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultByAlphaTest"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�ڴ�������ʾ��Ӱ
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DropShadow]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DefaultByAlphaTest"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�����ָ������ʾ��Ӱ
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\CursorShadow]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;����󻯺���С��ʱ��ʾ��̬����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\AnimateMinMax]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�϶�ʱ��ʾ��������
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DragFullWindows]
>>"%Temp%\Reg2Temp.reg" echo "DefaultValue"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�ر�ϵͳ��ԭ
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore]
>>"%Temp%\Reg2Temp.reg" echo "RPSessionInterval"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo [-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SPP\Clients]
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SPP\Clients]
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;(��)��ʼ�˵�����ѡ��
>>"%Temp%\Reg2Temp.reg" echo ;��ʾ����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]
>>"%Temp%\Reg2Temp.reg" echo "Start_ShowRun"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;ȡ����Ϸ������й��Ѱ�װ��Ϸ�ļ��ɺ���Ϣ���͡��ռ�����������Ϸ��Ϣ��
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\GameUX]
>>"%Temp%\Reg2Temp.reg" echo "FirstRunDialogLaunched"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "DownLoadGameInfo"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "ListRecentlyPlayed"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;==============�����Ż�==============
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����Windows Defender���ɨ�蹦��
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\WinDefend]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Defender"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\WinDefend]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Defender"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����Windows ���������ܴ���������
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\WSearch]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Search"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\WSearch]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Search"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����Windows �Զ����·���Ϊ�ֶ�
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\wuauserv]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Update"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000003
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\wuauserv]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Update"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000003
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����Windows �����֤
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\PolicyAgent]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="IPsec Policy Agent"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\PolicyAgent]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="IPsec Policy Agent"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����Windows Զ���û��޸�ע���
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\RemoteRegistry]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Remote Registry"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\RemoteRegistry]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Remote Registry"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����Windows ���ε�½
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\seclogon]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Secondary Logon"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\seclogon]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Secondary Logon"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����Windows ϵͳ�¼�֪ͨ
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\SENS]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="System Event Notification Service"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\SENS]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="System Event Notification Service"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����Windows ʱ��ͬ������Ϊ�ֶ�
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\W32Time]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Time"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000003
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\W32Time]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Time"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000003
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����Windows ���󱨸����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\WerSvc]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Error Reporting Service"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\WerSvc]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="Windows Error Reporting Service"
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;7.ȡ�����г���ǰ��ȫ����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Associations]
>>"%Temp%\Reg2Temp.reg" echo "ModRiskFileTypes"=".bat;.exe;.reg;.vbs"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;==============IE���������==============
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
>>"%Temp%\Reg2Temp.reg" echo @="��û�м���������������(&N)"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{B416D21B-3B22-B6D4-BBD3-BBD452DB3D5B}\Shell\NoAddOns\Command]
>>"%Temp%\Reg2Temp.reg" echo @="C:\\Program Files\\Internet Explorer\\iexplore.exe about:NoAdd-ons"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{B416D21B-3B22-B6D4-BBD3-BBD452DB3D5B}\Shell\Open]
>>"%Temp%\Reg2Temp.reg" echo @="����ҳ(&H)"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{B416D21B-3B22-B6D4-BBD3-BBD452DB3D5B}\Shell\Open\Command]
>>"%Temp%\Reg2Temp.reg" echo @="C:\\Program Files\\Internet Explorer\\iexplore.exe"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{B416D21B-3B22-B6D4-BBD3-BBD452DB3D5B}\Shell\Set]
>>"%Temp%\Reg2Temp.reg" echo @="����(&R)"
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
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="��ַ����"
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
>>"%Temp%\Reg2Temp.reg" echo ;IE7_8������ʹ��Сͼ��
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\CommandBar]
>>"%Temp%\Reg2Temp.reg" echo "SmallIcons"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����IE7_8�״������Զ�������
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "RunOnceHasShown"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "RunOnceComplete"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "DisableFirstRunCustomize"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;IE8��ҳ��ΪHao123����
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "Start Page"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "Default_Page_URL"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "Default_Search_URL"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "Search Page"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "Search Bar"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;8���� IE �ġ����Ϊ�����ش����������ʱ�Զ��ر�
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "NotifyDownloadComplete"="no"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����IE�״������Զ�������
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "RunOnceHasShown"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "RunOnceComplete"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "DisableFirstRunCustomize"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;��IE���±�ǩ�д����Ӵ���ҳ��
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "PopupsUseNewWindow"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;IE����ͼ���Զ�����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "Enable AutoImageResize"="yes"
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;IE����ClearType
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "UseClearType"="yes" 
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�Ӳ����в������ӡ����ⵯ����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Internet Settings]
>>"%Temp%\Reg2Temp.reg" echo "EnableAutodial"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings]
>>"%Temp%\Reg2Temp.reg" echo "EnableAutodial"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�Զ�ж��IE�в�����DLL
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "AlwaysUnloadDLL"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�Զ���������
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update]
>>"%Temp%\Reg2Temp.reg" echo "AUOptions"=dword:00000001         ;�Ӳ������� 
>>"%Temp%\Reg2Temp.reg" echo "ElevateNonAdmins"=dword:00000001  ;���������û��ڴ˼������װ����
>>"%Temp%\Reg2Temp.reg" echo "IncludeRecommendedUpdates"=dword:00000000  ;�ر��Ƽ�����(��Ϊ���������Ƽ��ر�)
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU]
>>"%Temp%\Reg2Temp.reg" echo "NoAUShutdownOption"=dword:00000001             ;�ر�Windowsʱ�Ի�����ʾ"��װ���²��ػ�"
>>"%Temp%\Reg2Temp.reg" echo "NoAutoRebootWithLoggedOnUsers"=dword:00000001  ;��ֹ��װ���º��Զ�����
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;ʼ������ѡ��д򿪵�������
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "PopupsUseNewWindow"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ; 12��������� Internet Explorer �Ƿ�ΪĬ���������
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "Check_Associations"="no"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;13�� IE ��ַ�� -> Ctrl+Enter ��ݼ��Զ�������������.com.cn Ϊ.com
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Toolbar\QuickComplete]
>>"%Temp%\Reg2Temp.reg" echo "QuickComplete"="https://www.%s.com"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�ر�Ĭ�Ϲ���(��ֹ $C $D,��ֹ $Admin)
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters]
>>"%Temp%\Reg2Temp.reg" echo "AutoShareServer"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "AutoShareWks"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;��ֹԶ���޸�ע���
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurePipeServers\winreg]
>>"%Temp%\Reg2Temp.reg" echo "RemoteRegAccess"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;ȡ��Զ��Э��
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Remote Assistance]
>>"%Temp%\Reg2Temp.reg" echo "fAllowToGetHelp"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Remote Assistance]
>>"%Temp%\Reg2Temp.reg" echo "fAllowToGetHelp"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�˳�ʱɾ�������ʷ��¼(0�رգ�1����)
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Privacy]
>>"%Temp%\Reg2Temp.reg" echo "ClearBrowsingHistoryOnExit"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;����ѡ����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "Enabled"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�رն��ѡ�ʱ��������
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "WarnOnClose"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;��������ѡ�ʱ��ʼ���л�����ѡ�
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "OpenInForeground"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;������������ʾ����ѡ���Ԥ��
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "ThumbnailBehavior"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�رտ��ٵ���ѡ�
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "QuickTabsThreshold"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�ر�ѡ�����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "Groups"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;��IEʱֻ���ص�һ����ҳ
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "OpenAllHomePages"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;����ѡ��󣬴����ĵ�һ����ҳ
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "NewTabPageShow"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;ʼ������ѡ��д򿪵�������
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "PopupsUseNewWindow"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�ӵ�ǰ�����е���ѡ�������
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "ShortcutBehavior"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;IE����Intranet��ȫ����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1]
>>"%Temp%\Reg2Temp.reg" echo "CurrentLevel"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "1001"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "1004"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "1201"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "1209"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "1806"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;IE����վ�㰲ȫ����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2]
>>"%Temp%\Reg2Temp.reg" echo "CurrentLevel"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "1001"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "1004"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "1201"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "1209"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "1806"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;ȥ��IE��ȫ���÷�����ʾ
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Group Policy Objects\{C2D0B7D4-7CC5-40A6-AC4C-A25BA2637B18}Machine\Software\Policies\Microsoft\Internet Explorer\Security]
>>"%Temp%\Reg2Temp.reg" echo "DisableSecuritySettingsCheck"=dword:00000001 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\Security] 
>>"%Temp%\Reg2Temp.reg" echo "DisableSecuritySettingsCheck"=dword:00000001 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Ext] 
>>"%Temp%\Reg2Temp.reg" echo "NoFirsttimeprompt"=dword:00000001 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Group Policy Objects\{C2D0B7D4-7CC5-40A6-AC4C-A25BA2637B18}Machine\Software\Microsoft\Windows\CurrentVersion\Policies\Ext]
>>"%Temp%\Reg2Temp.reg" echo "NoFirsttimeprompt"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;IE����ͼ���Զ�����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "Enable AutoImageResize"="yes"
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;IE����ClearType
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]
>>"%Temp%\Reg2Temp.reg" echo "UseClearType"="yes" 
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�Ӳ����в������ӡ����ⵯ����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Internet Settings]
>>"%Temp%\Reg2Temp.reg" echo "EnableAutodial"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings]
>>"%Temp%\Reg2Temp.reg" echo "EnableAutodial"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�Զ�ж��IE�в�����DLL
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "AlwaysUnloadDLL"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�Զ���������
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update]
>>"%Temp%\Reg2Temp.reg" echo "AUOptions"=dword:00000001         ;�Ӳ������� 
>>"%Temp%\Reg2Temp.reg" echo "ElevateNonAdmins"=dword:00000001  ;���������û��ڴ˼������װ����
>>"%Temp%\Reg2Temp.reg" echo "IncludeRecommendedUpdates"=dword:00000000  ;�ر��Ƽ�����(��Ϊ���������Ƽ��ر�)
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU]
>>"%Temp%\Reg2Temp.reg" echo "NoAUShutdownOption"=dword:00000001             ;�ر�Windowsʱ�Ի�����ʾ"��װ���²��ػ�"
>>"%Temp%\Reg2Temp.reg" echo "NoAutoRebootWithLoggedOnUsers"=dword:00000001  ;��ֹ��װ���º��Զ�����
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�ر�Ĭ�Ϲ���(��ֹ $C $D,��ֹ $Admin)
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters]
>>"%Temp%\Reg2Temp.reg" echo "AutoShareServer"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "AutoShareWks"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;��ֹԶ���޸�ע���
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurePipeServers\winreg]
>>"%Temp%\Reg2Temp.reg" echo "RemoteRegAccess"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;ȡ��Զ��Э��
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Remote Assistance]
>>"%Temp%\Reg2Temp.reg" echo "fAllowToGetHelp"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Remote Assistance]
>>"%Temp%\Reg2Temp.reg" echo "fAllowToGetHelp"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�رշ���ǽ
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
>>"%Temp%\Reg2Temp.reg" echo ;��IE��ͬʱ������Ŀ����10
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings]
>>"%Temp%\Reg2Temp.reg" echo "MaxConnectionsPer1_0Server"=dword:00000064
>>"%Temp%\Reg2Temp.reg" echo "MaxConnectionsPerServer"=dword:00000064
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;�ӿ�����������ȴ�ʱ��;ע�⣺������̫С��������WIN7���½�����ͼ�겻�������к�XX���ֿ����������ٻ���ͼ�굫��СԲȦ����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Control Panel\Desktop]
>>"%Temp%\Reg2Temp.reg" echo "HungAppTimeout"="2000"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����Ҽ�������������
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
>>"%Temp%\Reg2Temp.reg" echo ;����Windows7��TCP/IP�뿪����������
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters]
>>"%Temp%\Reg2Temp.reg" echo "EnableDeadGWDetect"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;ȥ������Ĭ�������۸ģ�����Ϊ��
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
>>"%Temp%\Reg2Temp.reg" echo �رճ������������
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat]
>>"%Temp%\Reg2Temp.reg" echo "DisablePCA"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�ر�����������֤
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Driver Signing]
>>"%Temp%\Reg2Temp.reg" echo "Policy"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Driver Signing]
>>"%Temp%\Reg2Temp.reg" echo "Policy"=hex:01
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows NT\Driver Signing]
>>"%Temp%\Reg2Temp.reg" echo "BehaviorOnFailedVerify"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�޸�ע���win7�Ҽ��˵������������ѽ��ȥ��
>>"%Temp%\Reg2Temp.reg" echo [-HKEY_CLASSES_ROOT\lnkfile\shellex\ContextMenuHandlers\Compatibility]
>>"%Temp%\Reg2Temp.reg" echo [-HKEY_CLASSES_ROOT\exefile\shellex\ContextMenuHandlers\Compatibility]
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CLASSES_ROOT\batfile\ShellEx\ContextMenuHandlers\Compatibility]
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�ر�UAC֪ͨ
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center]
>>"%Temp%\Reg2Temp.reg" echo "UacDisableNotify"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;����׷���𻵵Ŀ������
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "NoResolveTrack"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�������ϻָ�-ȡ��ϵͳʧ��������¼�д��ϵͳ��־���Զ�����������ȡ��д�������Ϣ
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\CrashControl]
>>"%Temp%\Reg2Temp.reg" echo "AutoReboot"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "CrashDumpEnabled"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "LogEvent"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;Windows Media Player����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsMediaPlayer]
>>"%Temp%\Reg2Temp.reg" echo "GroupPrivacyAcceptance"=dword:00000001 ;����ʾ�״�ʹ�öԻ���
>>"%Temp%\Reg2Temp.reg" echo "DisableAutoUpdate"=dword:00000001      ;��ֹWMP�Զ�����
>>"%Temp%\Reg2Temp.reg" echo "EnableScreenSaver"=dword:00000001      ;����WMPʱ�ر�����
>>"%Temp%\Reg2Temp.reg" echo "PreventLibrarySharing"=dword:00000001  ;��ֹý�干��
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;����ʱ�䲻ͬ��
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\W32Time\Parameters]
>>"%Temp%\Reg2Temp.reg" echo "Type"="NoSync"
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\services\W32Time]
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\W32Time\Parameters]
>>"%Temp%\Reg2Temp.reg" echo "Type"="NoSync"
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\W32Time]
>>"%Temp%\Reg2Temp.reg" echo "Start"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ���������ص�������
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\CTF\MSUTB]
>>"%Temp%\Reg2Temp.reg" echo "ShowDeskBand"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\CTF\LangBar]
>>"%Temp%\Reg2Temp.reg" echo "ShowStatus"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo "ExtraIconsOnMinimized"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;ȡ���������ϵİ�����ť
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\CTF\LangBar\ItemState\{ED9D5450-EBE6-4255-8289-F8A31E687228}]
>>"%Temp%\Reg2Temp.reg" echo "DemoteLevel"=dword:00000003
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;���ô��󱨸�
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PCHealth\ErrorReporting]
>>"%Temp%\Reg2Temp.reg" echo "ShowUI"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "DoReport"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;��С��������(������Ч)
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\CTF\MSUTB]
>>"%Temp%\Reg2Temp.reg" echo "ShowDeskBand"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\CTF\LangBar]
>>"%Temp%\Reg2Temp.reg" echo "ShowStatus"=dword:00000004
>>"%Temp%\Reg2Temp.reg" echo "ExtraIconsOnMinimized"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;ȥ��ĳЩSATAӲ��������ͼ��
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\nvata]
>>"%Temp%\Reg2Temp.reg" echo "DisableRemovable"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;(��)�����Ż�
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]
>>"%Temp%\Reg2Temp.reg" echo ;�Ż�VISTA/7����Դ�������е���ʾ�˵����ʺϹ���ϰ��
>>"%Temp%\Reg2Temp.reg" echo "AlwaysShowMenus"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo ;����Aero Snap��ʾ�ٶȣ����쿴����������ͼ
>>"%Temp%\Reg2Temp.reg" echo "ExtendedUIHoverTime"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;����Aero Peek͸�����湦�ܵ���ʾ�ٶ�
>>"%Temp%\Reg2Temp.reg" echo "DesktopLivePreviewHoverTime"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;
>>"%Temp%\Reg2Temp.reg" echo ;�޸ı����˻��Ĺ���Ͱ�ȫģ��Ϊ������
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa]
>>"%Temp%\Reg2Temp.reg" echo "forceguest"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ����OEM��Ϣ
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
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="������ַ����"
>>"%Temp%\Reg2Temp.reg" echo "URL"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;ȥ������Ĭ�������۸ģ�����Ϊ��
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
>>"%Temp%\Reg2Temp.reg" echo ;�����Ƶ����δ����������������ͼ����X������
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AudioSrv]
>>"%Temp%\Reg2Temp.reg" echo "DependOnService"=hex(7):50,00,6c,00,75,00,67,00,50,00,6c,00,61,00,79,00,00,00,\
>>"%Temp%\Reg2Temp.reg" echo 52,00,70,00,63,00,53,00,73,00,00,00,00,00
>>"%Temp%\Reg2Temp.reg" echo "Description"="������� Windows �ĳ������Ƶ�豸������˷�����ֹ����Ƶ�豸������Ч��������������������˷��񱻽��ã��κ��������ķ����޷�������"
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
>>"%Temp%\Reg2Temp.reg" echo "Description"="������� Windows �ĳ������Ƶ�豸������˷�����ֹ����Ƶ�豸������Ч��������������������˷��񱻽��ã��κ��������ķ����޷�������" 
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
>>"%Temp%\Reg2Temp.reg" echo "Description"="������� Windows �ĳ������Ƶ�豸������˷�����ֹ����Ƶ�豸������Ч��������������������˷��񱻽��ã��κ��������ķ����޷�������"
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
>>"%Temp%\Reg2Temp.reg" echo ;�����Զ�����
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
>>"%Temp%\Reg2Temp.reg" echo ;����win7���Զ�������С����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_USERS\.DEFAULT\Control Panel\Keyboard]
>>"%Temp%\Reg2Temp.reg" echo "InitialKeyboardIndicators"="2"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;�ر�Ԥ���Լ��ٿ����������ȴ�ʱ��ӿ�����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters]
>>"%Temp%\Reg2Temp.reg" echo "EnablePrefetcher"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters]
>>"%Temp%\Reg2Temp.reg" echo "EnablePrefetcher"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;��ֹ��������ĵ���¼����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]
>>"%Temp%\Reg2Temp.reg" echo "NoRecentDocsHistory"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]
>>"%Temp%\Reg2Temp.reg" echo "Start_ShowRecentDocs"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "Start_TrackDocs"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;��ֹU�̹��̵����д����Զ�����
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
>>"%Temp%\Reg2Temp.reg" echo ;��IE���±�ǩ�д����Ӵ���ҳ��
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\TabbedBrowsing]
>>"%Temp%\Reg2Temp.reg" echo "PopupsUseNewWindow"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;�ӿ�����������ȴ�ʱ��
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Control Panel\Desktop]
>>"%Temp%\Reg2Temp.reg" echo "HungAppTimeout"="500"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;�ӿ�رշ���ȴ�ʱ��
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control]
>>"%Temp%\Reg2Temp.reg" echo "WaitToKillServiceTimeout"="2000"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control]
>>"%Temp%\Reg2Temp.reg" echo "WaitToKillServiceTimeout"="2000"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;�ӿ�رճ���ȴ�ʱ��
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Control Panel\Desktop]
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;Ϊ�Ҽ����ϸ��Ƶ����ƶ�����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\Copy To]
>>"%Temp%\Reg2Temp.reg" echo @="{C2FBB630-2971-11D1-A18C-00C04FD75D13}"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\Move To]
>>"%Temp%\Reg2Temp.reg" echo @="{C2FBB631-2971-11D1-A18C-00C04FD75D13}"
>>"%Temp%\Reg2Temp.reg" echo "WaitToKillAppTimeout"="2000"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;win7˯��ʱ�������÷��� 
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power]
>>"%Temp%\Reg2Temp.reg" echo "AwayModeEnabled"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;ȥ���Ҽ��˵��С�ͨ��QQ���͵��ҵ��ֻ���
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
>>"%Temp%\Reg2Temp.reg" echo ;ȥ��PPTV �Ѻ�Ӱ�� pps�Զ�����
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
>>"%Temp%\Reg2Temp.reg" echo ;ȡ���Լ�
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager] 
>>"%Temp%\Reg2Temp.reg" echo "BootExecute"=hex(7):00,00 
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����ٶȣ�
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
>>"%Temp%\Reg2Temp.reg" echo ��ֹ������ҳ
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Control Panel]
>>"%Temp%\Reg2Temp.reg" echo "HOMEPAGE"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ɾ���ҵĵ�������ֵİ�����PPSӰ��ͼ��
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [-HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{CF3CDEFB-31BE-43AE-B064-B9C62C883259}]
>>"%Temp%\Reg2Temp.reg" echo @="������PPSӰ��"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ɾ���ҵĵ�������ֵ�PPTV�Ƶ㲥ϵͳ��Ӱ��ͼ��
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [-HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{FBEF9AF3-3978-49E3-9DD4-F5361E84ED14}]
>>"%Temp%\Reg2Temp.reg" echo @="PPTV�Ƶ㲥ϵͳ��"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ɾ��PPTV������
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run]
>>"%Temp%\Reg2Temp.reg" echo "PPLiveAP"=-
>>"%Temp%\Reg2Temp.reg" echo "YoukuMediaCenter"=-
>>"%Temp%\Reg2Temp.reg" echo "PPAP"=-
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ɾ��������������
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run]
>>"%Temp%\Reg2Temp.reg" echo "HCDNClient"=-
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo �ر�����win10����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate]
>>"%Temp%\Reg2Temp.reg" echo "DisableOSUpgrade"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\SearchScopes\{B2D17A31-2642-4D03-9D1F-ABD3BE1DCC4E}]
>>"%Temp%\Reg2Temp.reg" echo "DisplayName"="52Sdjk.com"
>>"%Temp%\Reg2Temp.reg" echo "URL"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "OSDFileURL"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo "SuggestionsURL_JSON"="https://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����ϵͳ���º���𡢲��Զ�������֪ͨ�����Զ���װ
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU]
>>"%Temp%\Reg2Temp.reg" echo "NoAutoRebootWithLoggedOnUsers"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo "AUOptions"=dword:00000002
>>"%Temp%\Reg2Temp.reg" echo "AutoInstallMinorUpdates"=dword:00000000
>>"%Temp%\Reg2Temp.reg" echo "NoAutoRebootWithLoggedOnUsers"=dword:00000000 
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����IE10����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Setup\10.0]
>>"%Temp%\Reg2Temp.reg" echo "DoNotAllowIE10"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����IE19����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Setup\9.0]
>>"%Temp%\Reg2Temp.reg" echo "DoNotOfferIE90AU"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����IE11����
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Setup\11.0]
>>"%Temp%\Reg2Temp.reg" echo "DoNotAllowIE11"=dword:00000001
>>"%Temp%\Reg2Temp.reg" echo.
>>"%Temp%\Reg2Temp.reg" echo ;����OEM
>>"%Temp%\Reg2Temp.reg" echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation]
>>"%Temp%\Reg2Temp.reg" echo "SupportURL"="http://www.2345.com/?1538"
>>"%Temp%\Reg2Temp.reg" echo.
start /wait regedit /s "%Temp%\Reg2Temp.reg
del /q "%Temp%\Reg2Temp.reg"
