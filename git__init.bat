:choice
@echo off
echo INITIALISATION DE GIT DANS UN DOSSIER.
echo ----
echo Initialisation : a n'effectuer qu'une seul fois
echo ----
echo ajoute une dossier cache '.git'
echo ce dossier comportera toutes les infos utilies a GIT
echo SAUF le fichier d'exclusion : .gitignore
echo      vous le creerez et ajouterez les fichiers exclus vous meme
echo      fichiers : nomFichier.ext ou  *.ext
echo      dossier  : /nomDossier
echo _______________________________________________
if "%1" EQU "?" goto :fin
:choice
set /P c=Attention : initialisation ! ContinuerY/N]?
if /I "%c%" EQU "Y" goto :init
if /I "%c%" EQU "N" goto :fin
goto :choice
:init
echo on
git init
@echo off
pause
exit
:fin
pause