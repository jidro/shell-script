@echo off
Title �������  Windows7ϵͳ������������
color 0a
mode con cols=55 lines=16
echo.
echo.
echo.
echo       ��ӭʹ�� ��ŵ������̳ http://XnBeta.cc Windows7ϵͳ��������������
echo.
echo.
echo.
echo            ���������ʼ���������ļ�......
echo.
pause>nul
cls
echo.
echo.
echo.
echo.
echo      ��������Tmp�ļ�....
echo.
attrib -r -a -s -h "%systemdrive%\*.tmp" /d /s>nul 2>nul
attrib -r -a -s -h "%systemdrive%\*._mp" /d /s>nul 2>nul
del /f /s /q "%systemdrive%\*.tmp">nul 2>nul
del /f /s /q "%systemdrive%\*._mp">nul 2>nul
cls
echo.
echo.
echo.
echo.
echo      ����������־�ļ�....
echo.
attrib -r -a -s -h "%systemdrive%\*.log" /d /s>nul 2>nul
del /f /s /q "%systemdrive%\*.log">nul 2>nul
cls
echo.
echo.
echo.
echo.
echo      ��������Gid�ļ�....
echo.
attrib -r -a -s -h "%systemdrive%\*.gid" /d /s>nul 2>nul
del /f /s /q "%systemdrive%\*.gid">nul 2>nul
cls
echo.
echo.
echo.
echo.
echo      ��������Chk�ļ�....
echo.
attrib -r -a -s -h "%systemdrive%\*.chk" /d /s>nul 2>nul
del /f /s /q "%systemdrive%\*.chk">nul 2>nul
cls
echo.
echo.
echo.
echo.
echo      ��������Old�ļ�....
echo.
attrib -r -a -s -h "%systemdrive%\*.old" /d /s>nul 2>nul
del /f /s /q "%systemdrive%\*.old">nul 2>nul
cls
echo.
echo.
echo.
echo.
echo      �����������վ....
echo.
attrib -r -a -s -h "%systemdrive%\recycled\*.*" /d /s>nul 2>nul
del /f /s /q "%systemdrive%\recycled\*.*">nul 2>nul
cls
echo.
echo.
echo.
echo.
echo      �����������ļ�....
echo.
attrib -r -a -s -h "%windir%\*.bak" /d /s>nul 2>nul
del /f /s /q "%windir%\*.bak">nul 2>nul
cls
echo.
echo.
echo.
echo.
echo      ���������ļ�ʹ�úۼ�....
echo.
attrib -r -a -s -h "%windir%\prefetch\*.pf" /d /s>nul 2>nul
del /f /s /q "%windir%\prefetch\*.pf">nul 2>nul
cls
echo.
echo.
echo.
echo.
echo      ��������Cookies�ļ�....
echo.
attrib -r -a -s -h "%userprofile%\cookies\*.*" /d /s>nul 2>nul
del /f /q "%userprofile%\cookies\*.*">nul 2>nul
cls
echo.
echo.
echo.
echo.
echo      ��������������������ʱ�ļ�....
echo.
attrib -r -a -s -h "%userprofile%\Local Settings\Temporary Internet Files\*.*" /d /s>nul 2>nul
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*">nul 2>nul
cls
echo.
echo.
echo.
echo.
echo      ����������ʱ�ļ�....
echo.
attrib -r -a -s -h "%userprofile%\Local Settings\Temp\*.*" /d /s>nul 2>nul
del /f /s /q "%userprofile%\Local Settings\Temp\*.*">nul 2>nul
cls
echo.
echo.
echo.
echo.
echo      ���������û���ʷ�ļ�....
echo.
attrib -r -a -s -h "%userprofile%\recent\*.*" /d /s>nul 2>nul
del /f /s /q "%userprofile%\recent\*.*">nul 2>nul
cls
echo.
echo.
echo.
echo                 ����ϵͳ������ɣ�
echo.
echo.
echo.
echo                 ��������˳�......
pause>nul
exit