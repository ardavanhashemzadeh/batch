@ECHO OFF
REM Ardavan Hashemzadeh
REM April 28 2019
REM Trigger Rigged Updater
REM For OpenDental

SET el=c:\rdel.txt
SET src="C:\Program Files (x86)\Open Dental"
SET dst="\\%1\C$\Program Files (x86)\Open Dental"

ECHO \logger\ > %el%
ECHO OpenDentalServerConfig.xml >> %el%
ECHO FreeDentalConfig.xml >> %el%

TASKKILL /s %1 /IM:OpenDental.exe /F
TASKKILL /s %1 /IM:OpenDentalService.exe /F
TASKKILL /s %1 /IM:OpenDentalEConnector.exe /F

xcopy /E /Y /EXCLUDE:%el% %src% %dst%

DEL %el%
