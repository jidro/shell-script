echo. Disable Windows Defender

::——– 权限————::
call :go_Set_acl “HKLM\SOFTWARE\Microsoft\Windows Defender”
::————————–::

::其它关闭方法 控制面板–启动 Windows Defender 之后 tools(工具),Options

set “jkhe=HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender”
echo y| reg add “%jkhe%” /v DisableAntiSpyware /t REG_DWORD /d 1 /f

set “jkhe=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender”
echo y| reg add “%jkhe%” /v DisableAntiSpyware /t REG_DWORD /d 1 /f

echo. 关闭‘Windows Defender’启动

echo y|reg delete “HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run” /v “Windows Defender” /f

::=======================================================================================

echo 关闭security center 提醒

set “jkhe=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center\Svc”
echo y| reg add “%jkhe%” /v AntiSpywareOverride /t REG_DWORD /d 1 /f

set “jkhe=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center\Svc”
echo y| reg add “%jkhe%” /v AntiVirusOverride /t REG_DWORD /d 1 /f

set “jkhe=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center\Svc”
echo y| reg add “%jkhe%” /v FirewallOverride /t REG_DWORD /d 1 /f

::========================================================================================

echo 操作中心(Disable Action Center) 消息通知图标(小白旗图标)

set “jkhe=HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer”
echo y| reg add “%jkhe%” /v HideSCAHealth /t REG_DWORD /d 1 /f

echo. 关闭Windows Defender 服务
call :SerPer “WinDefend”
sc config WinDefend start= disabled
sc stop WinDefend
echo ———————————
echo SECURITY CENTER安全中心的服务
call :SerPer “wscsvc”
sc config wscsvc start= disabled
sc stop wscsvc

goto :exitlabel
::**************************************************************************
:: 以下为设置权限的自定义 label
::**************************************************************************
:go_Set_acl
::注册表权限
echo 修改所有者
@SetACL.exe -on %1 -ot reg -actn setowner -ownr “n:administrators”
echo 修改权限
@SetACL.exe -on %1 -ot reg -actn ace -ace “n:administrators;p:full;i:sc,so”
goto :eof
:SerPer
::服务权限
SetACL.exe -on %1 -ot srv -actn setowner -ownr “n:administrators”
::SetACL.exe -on %1 -ot srv -actn ace -ace “n:administrators;p:start_stop”
SetACL.exe -on %1 -ot srv -actn ace -ace “n:administrators;p:full”
goto :eof
:exitlabel