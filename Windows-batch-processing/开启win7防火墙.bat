@echo off
sc config MpsSvc start= auto>nul
net start MpsSvc>nul 2>nul
echo ��ɣ�&pause>nul