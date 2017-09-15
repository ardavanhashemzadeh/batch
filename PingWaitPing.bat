@ECHO OFF
REM Ardavan Hashemzadeh
REM September 15 2017
REM Keep VPN connection alive by
REM pinging remote IP address

SET WaitTime=5
SET Destination=10.10.10.254

:loop
ping -n 1 -l 1 %Destination% > nul 2>&1
if "%ERRORLEVEL%" EQU "1" goto eof
timeout %WaitTime% > nul 2>&1
goto loop

:eof
echo %DATE% %TIME% Connection Died
