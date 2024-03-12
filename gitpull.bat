@echo off
echo RECOIT UNE BRANCHE DU SERVEUR GIT
echo Important : avant de recevoir une branche au serveeur GIT,
echo   - il faut vous connecter avec : cnx.bat
echo - l'etiquette de l'url de repository est inscrite dans "nom_repository.info"
echo - le nom de la branche par defaut est "master"
echo   mais vous pouvez en indiquer une autre en parametre 
echo _________________________
if "%1" EQU "?" goto :fin
set "branch=master"
if "%1" EQU "" goto branchok
set "branch=%1"
:branchok 
set /p val= <  nom_repository.info
echo etiquette-URL = '%val%' inscrite dans le fichier local : nom_repository.info
echo on
git pull %val% %branch%
@echo off
:fin
pause