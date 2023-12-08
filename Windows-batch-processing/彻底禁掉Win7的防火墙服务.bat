@echo off
(net start|find "Windows Firewall" >nul)&&(net stop MpsSvc>nul&sc config MpsSvc start= disabled>nul)||((sc qc mpssvc|find /i "START_TYPE"|find /i "DISABLED">nul)||sc config MpsSvc start= disabled>nul)
echo Íê³É£¡&pause>nul