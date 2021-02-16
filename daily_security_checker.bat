@echo off
rem no display command prompt
if not "%~0"=="%~dp0.\%~nx0" (
     start /min cmd /c,"%~dp0.\%~nx0" %*
     exit
)

rem ######################
rem daily security checker
rem ######################

rem set variable
set partition=------------------------------
set workfolda=work\security
set filepath=%userprofile%\%workfolda%\%date:~0,4%%date:~5,2%%date:~8,2%.txt

rem """
rem run daily security checker
rem """
rem ------------------------------
echo ver %partition% > %filepath%
ver >> %filepath%
rem ------------------------------
echo ipconfig %partition% >> %filepath%
ipconfig >> %filepath%
rem ------------------------------
echo ipconfig /displaydns %partition% >> %filepath%
ipconfig /displaydns >> %filepath%
rem ------------------------------
echo netstat %partition% >> %filepath%
netstat >> %filepath%
rem ------------------------------
