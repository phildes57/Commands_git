@echo off
echo SUPPRESION D'UN COMMIT / echo Identique a gitremovecommit.bat
echo Supprime tous les commits plus recents
echo Rappel : un commit mémorise une situation du projet
echo - les fichiers préparés par 'git add .' ou 'aa.bat'
echo ___________________________________________________
if "%1" == "?" goto :fin
set "a=%1"
if NOT "%a%" == "" goto editor
git log
set /p "a=Code du commit a supprimer : "
if "%a%" == "?" goto :fin
if "%a%" == "" goto :fin
:editor
echo on
git reset --hard "%a%"
@echo off
:fin
echo ________________RESULTAT___________________
echo on
git log
@echo off
pause