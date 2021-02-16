@echo off
rem no display command prompt
if not "%~0"=="%~dp0.\%~nx0" (
     start /min cmd /c,"%~dp0.\%~nx0" %*
     exit
)

set WORKFOLDA=work
set TODAYSTARTUP=%USERPROFILE%\%WORKFOLDA%\%date:~0,4%%date:~5,2%%date:~8,2%
mkdir %TODAYSTARTUP%
explorer.exe %TODAYSTARTUP%
