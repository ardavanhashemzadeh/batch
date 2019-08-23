@ECHO OFF
REM Ardavan Hashemzadeh
REM 08232019

SETLOCAL EnableDelayedExpansion

set agent=\\server\share\agent_install.exe
set tdsrp=\\server\share\tdsrp.bat

FOR %%h IN (%*) DO (

MKDIR \\%%h\c$\temp
COPY %agent% \\%%h\c$\temp\
COPY %tdsrp% \\%%h\c$\windows
PSEXEC \\%%h CMD /C "tdsrp \temp\agent_install.exe/silent"
)
