@echo off
Color 2f
echo.
echo ### �������������ù���Ա�Ĺ���Ա��׼ģʽ�� ###
echo.
echo ˵������������ģʽ�����ù���Ա[Administrator]�޷�ʹ��APP��EDGE�ȡ�
echo.
echo ���Ҽ��Թ���Ա������б�������
echo.
echo ���������ʼ
echo.
pause>nul
echo.
MD "%SystemRoot%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ������Թ���Ա������С���������&&Pause >NUL&&Exit)
RD "%SystemRoot%\System32\test_permissions" 2>NUL
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "FilterAdministratorToken" /t REG_dword /d 00000001 /f
echo.
echo �ѳɹ��������������ù���Ա�Ĺ���Ա��׼ģʽ��
echo ��Ҫ������Ч
echo.
echo ��������˳�
echo.
pause>nul

