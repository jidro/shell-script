@echo off
echo y|takeown /f "%ProgramFiles%\Windows Defender\*.*"
echo y|icacls "%ProgramFiles%\Windows Defender\*.*" /grant administrators:F
rd /s /q "%ProgramFiles%\Windows Defender\"
echo y|takeown /f "%ProgramFiles%\Windows Defender Advanced Threat Protection\*.*"
echo y|icacls "%ProgramFiles%\Windows Defender Advanced Threat Protection\*.*" /grant administrators:F
rd /s /q "%ProgramFiles%\Windows Defender Advanced Threat Protection\"
taskkill /im smartscreen.exe /f
echo y|takeown /f "%windir%\System32\smartscreen.exe"
echo y|icacls "%windir%\System32\smartscreen.exe" /grant administrators:F
del "%windir%\System32\smartscreen.exe" /f
PAUSE