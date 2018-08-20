REM Grant "Domain Users" recursive read/write perms for x-charge folder
icacls "c:\Program Files (x86)\X-Charge" /grant:r "Domain Users":(OI)(CI)M

REM Remote Silent Install of MSI
psexec \\MACHINE cmd /c "msiexec.exe /i 'MSI' /quiet /norestart"

REM Silent install of OpenDental.msi to custom folder with a verbose log
msiexec /i OpenDental.msi INSTALLDIR=c:\opendental /qn /lv install.log

REM Delete all printjobs on all machines in a text file
wmic /node:@listofpcs.txt printjob delete

REM Make FreeDentalConfig.xml readonly on multiple machines using psexec (must be in path)
FOR %s IN (srv1,srv2) DO (psexec \\%s cmd /c attrib +R "C:\Program Files (x86)\Open Dental\FreeDentalConfig.xml")

REM Copy only files that don't exist in the target destination
For %F In ("*.*") Do If Not Exist "\\wssds\opendentimages\opendentimages\vxdataws\images\%~nxF" Copy "%F" "\\wssds\opendentimages\opendentimages\vxdataws\images\%~nxF"

REM Copy file to same folder on multiple devices
FOR %s IN (srv1,srv2) DO (copy /y FreeDentalConfig.xml "\\%s\c$\Program Files (x86)\Open Dental\")
