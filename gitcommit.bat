@echo off
echo CREATION DE COMMIT / echo Identique a cc.bat
echo Un commit est la situation du travail memorisee par cette commande
echo ___________________________________________________
if "%1" == "?" goto :fin
set "a=%1"
if NOT "%a%" == "" goto editor
set /p "a=Information pour ce nouveau commit : "
if "%a%" == "?" goto :fin
if "%a%" == "" goto :fin
:editor
echo on
git commit -m %a%
@echo off
goto :fin
:fin
echo on
git status
@echo off
pause