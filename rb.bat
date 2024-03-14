@echo off
echo SUPPRESSION DE BRANCE
echo Suppression en local
echo ___________________________________________________
git branch
set /p "a=Non de la branch a supprimer : "
if "%a%" == "?" goto :fin
if "%a%" == "" goto :fin
git branch -d %a%
git branch
:fin
pause