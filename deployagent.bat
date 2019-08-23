@ECHO OFF
REM Ardavan Hashemzadeh
REM 08232019

SETLOCAL EnableDelayedExpansion

set agent=\\server\share\agent_install.exe
set tdsrp=\\server\share\tdsrp.bat

FOR %%h IN (%*) DO (

MKDIR \\%1\c$\temp
COPY %agent% \\%1\c$\temp\
COPY %tdsrp% \\%1\c$\windows
PSEXEC \\%1 CMD /C "tdsrp \temp\agent_install.exe/silent"
)
