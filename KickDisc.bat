@ECHO OFF
REM Ardavan Hashemzadeh
REM Kick off disconnected sessions on multiple servers

SETLOCAL EnableDelayedExpansion
SET SERVERS=srv1,srv2,srv3

FOR %%s IN (%SERVERS%) DO (
ECHO %DATE% %TIME% Server: %%s
FOR /F "tokens=2" %%i IN ('qwinsta /server:%%s ^| FIND /I "Disc" ^| FIND /V "services"') DO (
rwinsta %%i /server:%%s
)
)
