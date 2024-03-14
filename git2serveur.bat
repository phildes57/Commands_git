@echo off
echo ENVOIE UNE BRANCHE SUR LE SERVEUR GIT
echo Important : avant d'envoyer une branche au serveur GIT,
echo   - il faut vous connecter avec : cnx.bat
echo - l'etiquette de l'url de repository est inscrite dans "nom_repository.info"
echo - le nom de la branche par defaut est "master"
echo   mais vous pouvez en indiquer une autre en parametre 
echo _________________________
if "%1" EQU "?" goto :fin
set "branch=master"
echo %branch%
if "%1" EQU "" goto branchok
set "branch=%1"
echo "3 branch=" %branch%
:branchok 
set /p val= <  nom_repository.info
echo etiquette-URL = '%val%' inscrite dans le fichier local : nom_repository.info
echo on
git push -u %val% %branch%
@echo off
:fin
pause