@echo off
echo sans parametre = lister les branches
echo Avec parametre : nom d'une branche = creer une branche
echo ______________________________________________________
if "%1" EQU "?" goto :fin
if "%1" NEQ "" goto :creecommit
set /p "a=Entrer le nom de la nouvelle branche : "
if [%a%]==[] goto :fin
if "%a%" EQU "?" goto :fin
@echo on
git branch %a%
@echo off
goto :fin
:creecommit
echo on
git branch %1
@echo off
:fin
pause