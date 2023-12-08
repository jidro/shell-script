reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "DisallowCpl" /t 
REG_DWORD /d "1" /f

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowCpl" /v "1" /t 
REG_SZ /d "Windows Defender" /f

shutdown -l -f