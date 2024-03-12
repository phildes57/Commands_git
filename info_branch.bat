@echo off
echo git branch
echo 	affiche le nom de la branche en cours
echo git branch nomBranche 
echo 	cree la branche nomBranche
echo    note : cette branche s'appropie le commit en cours
echo		   le travail NE se place PAS dans cette branche
echo git checkout nomBranche
echo	le travaille s'effectue dans cette branche
echo	IMPORTANT : lancer un COMMIT avant de quiter cette branche
echo git merge nomBranche 
echo 	Integre la branche-nomBranche a la branche en-cours-de-travail 
echo	Note : il faut donc replacer le travail-en-cours dans la branche parent
echo		   avant de realiser le merge
echo git reset --hard <sha1-commit-id>
echo 	Supprime un commit d'une branche
echo _________________________________________________
echo REPERTOIRE DISTANT
echo     : D'abord se connecter a GIT pour creer un dossier - repository
echo git remote add nomDossier https://urls_fourni_par_git
echo git push -u nomDossier nomBranche
echo	envoie le dernier commit dans la branche "nomBranche" du dossier GIT
pause