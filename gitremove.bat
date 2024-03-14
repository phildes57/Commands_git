@echo off
echo SORT UN FICHIER DU COMMITS EN COURS / Identique a rf.bat
echo commitable : fichier qui seront integres au prochain commit
if ["%1"]==["?"] goto :fin
set "fch=%1"
if NOT [%1]==[] goto :rm
echo .	vous devez indiquer un nom de fichier
echo .     ex : gitremove toto.txt 
<<<<<<< HEAD
set /p "fch= <  Nom du fichier a extraire des commited : "
=======
set /p "fch= <  Nom du fichier a extraire des commited"
>>>>>>> 2a0b43cf63df250d706b0f0851391930ccc97d7f
if ["%fch%"]==[""] goto :fin
if ["%fch%"]==["?"] goto :fin
:rm
@echo on
git rm --cached %fch%
git status
@echo off
pause
exit
:fin
pause