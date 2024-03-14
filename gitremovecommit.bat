@echo off
echo SUPPRESION D'UN COMMIT / echo Identique a rc.bat
echo Un commit est la situation du travail memorisee par cette commande
echo ___________________________________________________
if "%1" == "?" goto :fin
set "a=%1"
if NOT "%a%" == "" goto editor
git log
set /p "a=Code du commit à supprimer : "
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