REM Ardavan Hashemzadeh
REM July 20 2018
REM Kill all printjobs in a list of computers

SETLOCAL EableDelayedExpansion
SET NODES=n1,n2,n3...

FOR %%n IN (%NODES%) DO (
start "%%n" \PATH\TO\PSEXEC\psexec \\%%n wmic printjob delete
)
