@echo off
echo CHANGEMENT DE COMMIT / identique a git2commit.bat
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
set "a=%1"
echo ___________________________________________
if NOT [%a%]==[] goto :changer
git log
echo Copier - Ctrl-C - un code commit (+40 caractère)
echo copiez le ci-dessous.   
set /p "a=Code commit : "
if [%a%]==[] exit
if "%a%" EQU "?" goto :fin
:changer
echo on
git checkout %a%
git status
@echo off
pause
exist
:fin
echo on
git log
@echo off
echo vous devez indiquer un code de commit
echo selectionnez + CTRL-C
echo ===========================================
git log
pause

