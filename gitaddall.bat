@echo off
echo AJOUT DE TOUS LES FICHIERS DANaS COMMITABLE / identique a : aa.bat
echo Commitable : fichiers qui seront integres dans le prochain commit
echo .	Un commit memorise la situation des fichier de travail a un temps donne
echo .  Ce commit est place dans la branche courante
echo .  Le projet est une branche
echo .  - mais nous realiseront les modifications dans des copies de notre projet
echo .	  afin de proteger le travail deja accompli
echo .	  cette copie se nomme : une branche
echo _____________________________________________________
if "%1" EQU "?" goto :fin
echo on
git add .
@echo off
:fin
pause