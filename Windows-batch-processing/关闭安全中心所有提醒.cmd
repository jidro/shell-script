echo. Disable Windows Defender

::�����C Ȩ�ޡ�������::
call :go_Set_acl ��HKLM\SOFTWARE\Microsoft\Windows Defender��
::�����������������C::

::�����رշ��� �������C���� Windows Defender ֮�� tools(����),Options

set ��jkhe=HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender��
echo y| reg add ��%jkhe%�� /v DisableAntiSpyware /t REG_DWORD /d 1 /f

set ��jkhe=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender��
echo y| reg add ��%jkhe%�� /v DisableAntiSpyware /t REG_DWORD /d 1 /f

echo. �رա�Windows Defender������

echo y|reg delete ��HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run�� /v ��Windows Defender�� /f

::=======================================================================================

echo �ر�security center ����

set ��jkhe=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center\Svc��
echo y| reg add ��%jkhe%�� /v AntiSpywareOverride /t REG_DWORD /d 1 /f

set ��jkhe=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center\Svc��
echo y| reg add ��%jkhe%�� /v AntiVirusOverride /t REG_DWORD /d 1 /f

set ��jkhe=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center\Svc��
echo y| reg add ��%jkhe%�� /v FirewallOverride /t REG_DWORD /d 1 /f

::========================================================================================

echo ��������(Disable Action Center) ��Ϣ֪ͨͼ��(С����ͼ��)

set ��jkhe=HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer��
echo y| reg add ��%jkhe%�� /v HideSCAHealth /t REG_DWORD /d 1 /f

echo. �ر�Windows Defender ����
call :SerPer ��WinDefend��
sc config WinDefend start= disabled
sc stop WinDefend
echo ����������������������
echo SECURITY CENTER��ȫ���ĵķ���
call :SerPer ��wscsvc��
sc config wscsvc start= disabled
sc stop wscsvc

goto :exitlabel
::**************************************************************************
:: ����Ϊ����Ȩ�޵��Զ��� label
::**************************************************************************
:go_Set_acl
::ע���Ȩ��
echo �޸�������
@SetACL.exe -on %1 -ot reg -actn setowner -ownr ��n:administrators��
echo �޸�Ȩ��
@SetACL.exe -on %1 -ot reg -actn ace -ace ��n:administrators;p:full;i:sc,so��
goto :eof
:SerPer
::����Ȩ��
SetACL.exe -on %1 -ot srv -actn setowner -ownr ��n:administrators��
::SetACL.exe -on %1 -ot srv -actn ace -ace ��n:administrators;p:start_stop��
SetACL.exe -on %1 -ot srv -actn ace -ace ��n:administrators;p:full��
goto :eof
:exitlabel