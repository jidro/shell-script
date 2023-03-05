@echo off 
echo Checking for system errors... 
sfc /scannow 
echo Errors fixed. 
echo Cleaning Windows junk files... 
cleanmgr /sagerun:1 
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts.tmp /f 
echo Cleanup complete. 
pause

