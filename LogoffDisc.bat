@ECHO OFF
REM Ardavan Hashemzadeh
REM September 15 2017
REM Logoff all disconnected sessions
REM on all servers in a list

SET SERVERS=server1,server2,server3

FOR %%s IN (%SERVERS%) DO (
FOR /F "tokens=2" %%i IN ('qwinsta /server:%%s ^| FIND /I "Disc" ^| FIND /V "services"') DO (
rwinsta %%i /server:%%s
)
)
