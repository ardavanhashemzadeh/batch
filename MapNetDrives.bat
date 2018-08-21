REM Ardavan Hashemzadeh
REM August 21 2018
REM Remove and ReMap Network Drives
net use z: /delete
net use z: \\server1\share1 /persistent:yes
net use y: /delete
net use y: \\server2\share2 /persistent:yes
pause
