@echo off

:: Copy the SQLite file to applicatin path

set targetFilePath=E:\Work\Code\HAMSGitHub\src\HAMS\bin\Debug\

XCOPY Releases "%targetFilePath%" /S /E /Y 

pause