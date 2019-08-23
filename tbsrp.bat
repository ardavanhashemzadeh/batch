@ECHO OFF
REM Ardavan Hashemzadeh
REM Created on 08232019
REM Place in whitelisted path
REM then run with argument
reg copy HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Safer HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Safer.old && reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Safer /f && cmd /c "%*" & reg copy HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Safer.old HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Safer && reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Safer.old /f
