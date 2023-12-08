@echo off
Color 2f
echo.
echo ### 关闭“用于内置管理员的管理员批准模式” ###
echo.
echo 说明：系统默认为关闭，但内置管理员[Administrator]无法使用APP与EDGE等。
echo.
echo 【右键以管理员身份运行本批处理】
echo.
echo 按任意键开始
echo.
pause>nul
echo.
MD "%SystemRoot%\System32\test_permissions" 2>NUL||(Echo 请使用右键，“以管理员身份运行”本批处理。&&Pause >NUL&&Exit)
RD "%SystemRoot%\System32\test_permissions" 2>NUL
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "FilterAdministratorToken" /t REG_dword /d 00000000 /f
echo.
echo 已成功关闭“用于内置管理员的管理员批准模式”
echo 需要重启生效
echo.
echo 按任意键退出
echo.
pause>nul

