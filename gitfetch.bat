@echo off
echo TELECHARGE (DOWNLOAD) les branches installees sur le serveur Github
echo SANS realiser de merge
if "%1" EQU "?" goto :fin
echo on
git fetch
echo off
:fin
pause