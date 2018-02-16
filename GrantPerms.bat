@ECHO OFF
REM Ardavan Hashemzadeh
REM July 8 2017
REM Grant all permissions
REM on r and r-studio folders
REM in the program files
REM and progam files (x86) folders
REM to Domain Users

SETLOCAL EnableDelayedExpansion

FOR %%h IN (06 07 08 09 11 12 14) DO (
FOR %%f IN ("c$\Program Files" "c$\Program Files (x86)") DO (
FOR %%p IN (r rstudio) DO (

IF EXIST \\10.10.10.1%%h\%%~f\%%p icacls "\\10.10.10.1%%h\%%~f\%%p" /grant:r "Domain Users":^(OI^)^(CI^)M

REM Following close paren from FOR %%p
)

REM Following close paren from FOR %%f
)

REM Following close paren from FOR %%h
)
