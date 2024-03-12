@echo off
echo AJOUT DE TOUS LES FICHIERS DANS COMMITABLE / identique a gitaddall.bat
echo Commitable : fichiers qui seront integres dans le prochain commit
echo _____________________________________________________
if "%1" EQU "?" goto :fin
echo on
git add .
@echo off
:fin
pause
