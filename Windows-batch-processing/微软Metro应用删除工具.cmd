@echo off
ver|find "10.">nul||(echo �ű�����Windows 10ʹ��&pause>nul&exit)
ver|find "6.">nul&&goto admin
openfiles.exe>nul
if "%errorlevel%" neq "0" (goto uac) else (goto admin)
:uac
> "%temp%\adminr.vbs" echo CreateObject^("Shell.Application"^).ShellExecute "%~0", "", "", "runas", 1 
"%temp%\adminr.vbs"
rem del "%temp%\adminr.vbs" >nul 2>nul
exit /b
:admin
pushd "%CD%"&cd /d "%~dp0"
title "%~n0"  By: fastslz
:slz
cls
color 0a
mode con: cols=80 lines=32
set "OSx=%PROCESSOR_ARCHITECTURE%"
set "Disms=%~dp0x%OSx:~-2%"	
echo,
echo Windows 10 ΢�� Metro ���ɾ������
echo 	1:  ����
echo 	2:  OneNote
echo 	3:  3D ��ӡ
echo 	4:  �ʼ�������
echo 	5:  Groove����
echo 	6:  ��Ӱ�����
echo 	7:  �ֻ�����
echo 	8:  ֽ����Ϸ
echo 	9:  Windows ͼƬ
echo 	10: Windows ���
echo 	11: Windows ��ͼ
echo 	12: ����¼����
echo 	13: Xbox ϵ��
echo 	14: ��ȡSkype
echo 	15: ��ȡOffice
echo 	16: ��Ӧ��Ѷ
echo 	17: ��Ӧ�ƾ�
echo 	18: ��Ӧ����
echo 	19: ��Ӧ����
echo 	20: ɾ������΢��MetroӦ��
echo,
set /p aKey=����ɾ����Ŀ��ţ������س������˳�ֱ�Ӱ��س�����
if "%aKey%"=="" exit
if %aKey% equ 1 Call :rApp "Microsoft.People"
if %aKey% equ 2 Call :rApp "Microsoft.Office.OneNote"
if %aKey% equ 3 Call :rApp "Microsoft.3DBuilder"
if %aKey% equ 4 Call :rApp "Microsoft.windowscommunicationsapps"
if %aKey% equ 5 Call :rApp "Microsoft.ZuneMusic"
if %aKey% equ 6 Call :rApp "Microsoft.ZuneVideo"
if %aKey% equ 7 Call :rApp "Microsoft.WindowsPhone"
if %aKey% equ 8 Call :rApp "Microsoft.MicrosoftSolitaireCollection"
if %aKey% equ 9 Call :rApp "Microsoft.Windows.Photos"
if %aKey% equ 10 Call :rApp "Microsoft.WindowsCamera"
if %aKey% equ 11 Call :rApp "Microsoft.WindowsMaps"
if %aKey% equ 12 Call :rApp "Microsoft.WindowsSoundRecorder"
if %aKey% equ 13 Call :rApp "Microsoft.XboxApp"
if %aKey% equ 14 Call :rApp "Microsoft.SkypeApp"
if %aKey% equ 15 Call :rApp "Microsoft.MicrosoftOfficeHub"
if %aKey% equ 16 Call :rApp "Microsoft.BingNews"
if %aKey% equ 17 Call :rApp "Microsoft.BingFinance"
if %aKey% equ 18 Call :rApp "Microsoft.BingWeather"
if %aKey% equ 19 Call :rApp "Microsoft.BingSports"
if %aKey% equ 20 Call :rApp "Microsoft.*"
PowerShell Sleep 2
cls
goto slz

:rApp
if "%~1"=="" goto:eof
PowerShell "Get-AppxPackage %~1 | Remove-AppxPackage" 2>nul
for /f "delims=" %%i in ('dir /ad/b "%ProgramFiles%\WindowsApps\*%~1*neutral*" 2^>nul') do (
    "%Disms%\Dism.exe" /online /Remove-ProvisionedAppxPackage /PackageName:"%%~i"
)
goto:eof



