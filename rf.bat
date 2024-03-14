@echo off
echo SORT UN FICHIER DU COMMITS EN COURS / Identique a gitremove.bat
echo commitable : fichier qui seront integres au prochain commit
if ["%1"]==["?"] goto :fin
set "fch=%1"
if NOT [%1]==[] goto :rm
echo .	vous devez indiquer un nom de fichier
echo .     ex : gitremove toto.txt 
set /p "fch= <  Nom du fichier a extraire des commited : "
if ["%fch%"]==[""] goto :fin
if ["%fch%"]==["?"] goto :fin
:rm
@echo on
git rm --cached %fch%
git status
@echo off
:fin
pause
