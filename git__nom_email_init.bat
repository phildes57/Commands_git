:choice
@echo off
echo CONFIGURATION DE GIT : NOM, EMAIL
echo ----
echo Initialisation : a n'effectuer qu'une seul fois
echo ----
echo ouvrez ce fichier "git_nom_email.bat" pour verifier que les informations sont correctes
set /P c=Attention : configuration ! ContinuerY/N]?
if /I "%c%" EQU "Y" goto :name
if /I "%c%" EQU "N" goto :fin
:name
set /p nom= <  perso/nom.info
if NOT "%nom%" == "" goto :email
set /p "nom=Votre pseudo Github : "
if "%nom%" == "" goto :fin
:email
set /p email= <  perso/email.info
if NOT "%email%" == "" goto :config
set /p "email=votre e-mail : "
if "%email%" == "" goto :fin
:config
echo on
git config --global user.name %nom%
git config --global user.email %email%
git config --list
@echo off
pause
exit

:fin
