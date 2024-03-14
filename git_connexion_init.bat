@echo off
echo CONNEXION AU SERVEUR GIT / identique a cnx.bat
echo ----
echo Initialisation : a n'effectuer qu'une seul fois
echo ----
echo Avant de vous connecter vous devez creer votre repository sur le site git
echo 	- recuperez l'URL de votre repository dans la liste : CODE / zone : HTTPS
echo    - puis inscrivez le a la place de cet URL
echo Parametres : 
echo 	- etiquette qui remplacera l'URL (fournit par GIT) dans vos echanges avec GIT
echo .	  cette etiquette sera inscrite dans le fichier local : nom_repository.info
set "url=https://github.com/phildes57/Commands_git.git"
echo "lien actuel : %url%"
if "%1" EQU "?" goto :fin
set /P c=IMPORTANT. Est-ce le lien correct vers CE projet git. ContinuerY/N]?
if /I "%c%" EQU "Y" goto :start
echo Vous devez modifier ce fichier cnx.bat. 
echo Inscrire l'URL de ce projet 
echo Vous trouverez ce lien sur le serveur GIT, dans le repository de ce projet
echo .    Bouton CODE / zone de saisie URL
echo .    - copiez le dans ce texte.
echo ___________________________________________________
pause
exit
:start
set "a=%1"
if NOT "%a%" == "" goto :remote
set /p "a=Etiquette de l'URL de repository sur le serveur : "
if "%a%" == "?" goto :etiquetteinfo
if "%a%" == "" 	goto :etiquetteinfo
:remote
echo %a% > nom_repository.info
echo etiquette-URL = %a% inscrite dans le fichier local : nom_repository.info
echo ______________________________________________________________
echo on
git remote add %a% "%url%"
@echo off
:fin
pause
exit
:etiquetteinfo
echo Le 1er parametre est une etiquette : un nom qui remplace une valeur
echo ce nom est memorise dans : nom_repository.info
echo vous n'aurez plus a vous en peoccuper
pause
exit