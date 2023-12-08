@ECHO OFF
If exist "%Temp%\~import.reg" (
 Attrib -R -S -H "%Temp%\~import.reg"
 del /F /Q "%Temp%\~import.reg"
 If exist "%Temp%\~import.reg" (
  Echo Could not delete file "%Temp%\~import.reg"
  Pause
 )
)
> "%Temp%\~import.reg" ECHO Windows Registry Editor Version 5.00
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\lnkfile]
>> "%Temp%\~import.reg" ECHO "IsShortcut"=""
START /WAIT REGEDIT /S "%Temp%\~import.reg"
DEL "%Temp%\~import.reg"
