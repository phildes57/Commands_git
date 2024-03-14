@echo off
echo LISTER - CREER UNE BRANCHE / identique a : gitbranch.bat
echo sans nom_de_branche = lister les branches
echo Avec un nom de branche = creer une branche
echo Note ce nom peut etre indique en parametre de cette commande
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
echo on
git branch
@echo off
pause
exit