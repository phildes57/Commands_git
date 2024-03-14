@echo off
echo CHANGEMENT DE COMMIT / identique a ccc.bat
echo Parametre :
echo - identifiant du COMMIT
echo   Vous le trouverez avec la commande : gitlog
echo   - ce sont les longs code de plus de 40 caracteres
echo . 
echo ! attention danger. Ce changement de commit modifie votre dossier de travail.
echo Le traitement change de commit
echo    pour retrouver une version ulterieure du travail
echo    ou retrouver la derniere version
if "%1" EQU "?" goto :fin
echo ___________________________________________
if [%1]==[] goto :input
echo on
git checkout %1
git status
@echo off
pause
exist
:input
git log
set /p "a=Enter code commit: "
if [%a%]==[] exit
echo on
git checkout %a%
git status
@echo off
pause
exit
:fin
echo on
git log
@echo off
echo vous devez indiquer un code de commit
echo selectionnez + CTRL-C
echo ===========================================
git log
pause





