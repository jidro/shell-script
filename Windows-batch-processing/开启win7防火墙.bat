@echo off
sc config MpsSvc start= auto>nul
net start MpsSvc>nul 2>nul
echo Íê³É£¡&pause>nul