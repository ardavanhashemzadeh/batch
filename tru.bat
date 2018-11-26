@ECHO OFF
REM Ardavan Hashemzadeh
REM November 23 2018
REM Trigger Rigged Updater
REM For OpenDental

TASKKILL /IM:OpenDental.exe

SET el=c:\rdel.txt
SET src="\\hellosmile.com\c$\Program Files (x86)\OpenDentalPedo"
SET dst="C:\Program Files (x86)\Open Dental\"

ECHO \logger\ > %el%
ECHO OpenDentalServerConfig.xml >> %el%
ECHO FreeDentalConfig.xml >> %el%
xcopy /E /EXCLUDE:%el% %src% %dst%
