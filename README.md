#TP POWERSHELL

##Exercice 1 : Mise en place de l’environnement de travail sur PowerShell (60 min)

01.	Sur votre PC, si ce n’est pas encore fait, créez un dossier FormationPowerShell contenant les documents du cours que vous avez récupéré et un dossier vide nommé Scripts.
02.	A l’aide de notepad, créez un fichier nommée 1.HelloWorld.ps1 dans le dossier Scripts contenant le code suivant :
echo "Hello World!"
03.	Dans windows, ouvrez l’application Windows PowerShell en tant qu’ Administrateur
04.	Entrez les différentes commandes suivantes et constatez le résultat de chaque commande :
echo “Bonjour”
cls
dir
cls
ls
cls
Get-ChildItem
cls
Get-ExecutionPolicy
Notez bien le résultat de la dernière commande vous devriez avoir : Restricted
Si vous obtenez autre chose, exécutez la commande suivante
Set-ExecutionPolicy Restricted
05.	Modifier le répertoire actuel à l’aide de la commande cd afin de vous positionner sur le répertoire Scripts.
Exemple : cd "c:\FormationPowerShell\Scripts" …. Adaptez avec votre chemin local
06.	Entrez à nouveau la commande dir et constatez la présence du fichier 1.1.HelloWorld.ps1
07.	Exécutez la commande suivante 
PowerShell.exe –File "1.HelloWorld.ps1" et constatez l’erreur d’exécution
08.	Exécutez la commande suivante et constatez son résultat
powershell.exe -ExecutionPolicy Bypass -File "1.HelloWorld.ps1" 
09.	Exécutez à nouveau la commande suivante  et constater à nouveau son échec !
PowerShell.exe –File "1.HelloWorld.ps1" et constatez l’erreur d’exécution
10.	Exécutez ceci :
Set-ExecutionPolicy Bypass Process
11.	Exécutez à nouveau la commande suivante, 2 fois de suite et constatez son succès pour les 2 fois !
PowerShell.exe –File "1.HelloWorld.ps1"
12.	Fermez la console, rouvrez-la en mode Administrateur, positionnez-vous sur le répertoire script et exécutez à nouveau la commande précédente : 
PowerShell.exe –File "1.HelloWorld.ps1"
Constatez son échec !
13.	Exécutez ceci :
Set-ExecutionPolicy RemoteSigned
14.	Exécutez ceci :
Get-ExecutionPolicy
Le résultat doit être : RemoteSigned
15.	exécutez à nouveau la commande précédente et constatez son succès : 
PowerShell.exe –File "1.HelloWorld.ps1"
16.	Fermez à nouveau la console puis rouvrez-la en mode admin, positionnez-vous sur le même dossier et exécutez à nouveau la commande précédente en constatant son succès. PowerShell.exe –File "1.HelloWorld.ps1"


##Exercice 2 : Flux de sortie (20 min)

1)	Créez un script Ex2.ps1 dans scripts
2)	Ouvrez PowerShell et positionnez-le sur le dossier Scripts afin de pouvoir exécuter Ex2.ps1 à chaque modification
3)	Ajoutez une ligne dans Ex2.ps1 afin qu’il affiche le contenu du dossier courant
4)	Modifiez Ex2.ps1 afin que le résultat de l’exécution précédente soit dans un fichier Ex2.txt
5)	Modifiez Ex2.ps1 afin que le contenu du résultat de l’exécution précédente soit dans un fichier Ex2.txt
6)	Modifiez Ex2.ps1 afin que le contenu du résultat de chaque appel s’ajoute au fichier Ex2.txt, exécutez Ex2.ps1 plusieurs fois
7)	Rajoutez une ligne de script à Ex2.ps1 afin qu’il affiche le contenu d’un dossier inexistant (erreur)
8)	Modifiez la ligne précédente afin que l’erreur soit dans un fichier Ex2.err. Faites-le de 2 manières : 
a.	En redirigeant le flux d’erreurs vers un fichier Ex2.err
b.	En redirigeant le flux d’erreur vers le flux de sortie (stdout) et le flux de sortie (stdout) vers le fichier Ex2.err
c.	Quelle est la différence entre les 2 méthodes ?


##Exercice 3 : Alias (10 min)

1)	Ouvrez PowerShell
2)	Exécutez la commande : Test-NetConnection
3)	Définissez un alias MonAlias à cette commande et exécutez-le
4)	Affichez le contenu du dossier courant
5)	Créez un nouvel alias composé de vos initiales + Alias (exemple : Martin PECHEUR devient : mpAlias) qui fait la même chose puis exécutez-le
6)	Fermez PowerShell puis rouvrez-le à nouveau
7)	Testez à nouveau les 2 alias que vous avez créés, que remarquez-vous ?
8)	Créez un fichier Ex3.ps1 qui contient la définition des 2 alias et un appel à chaque alias
9)	Exécutez le script Ex3.ps1
10)	Depuis la console PowerShell, essayez d’utiliser les alias créés dans le fichier Ex3.ps1, que remarquez-vous ? 
11)	Depuis la console exécutez ceci : $pshome


##Exercice 4 : Pipe, select-object et/ou foreach (35 min)

1)	Créez un nouveau script Ex4.ps1, ouvrez la console Powershell et positionnez-la sur le répertoire Scripts.
2)	Affichez le contenu de c:\ => Get-ChildItem "C:\"
3)	Notez les propriétés affichées (nom des colonnes)
4)	A l’aide du pipe et du select-object Modifiez votre appel afin qu’il affiche un sous ensemble de ces propriétés et dans un ordre différent (choisissez les propriétés à afficher et l’ordre). Refaites la même chose avec foreach (ou son alias %)
5)	 Affichez la liste des variables d’environnement => Get-ChildItem env:
6)	Faites la même chose que précédemment (notez les propriétés puis changez leur affichage)
7)	Faites la même chose avec Get-Process, Get-Command et Get-alias
8)	Exécutez Get-Help Get-ChildItem
9)	Essayer de déduire d’après le résultat de la question précédente la commande qui permet de ne trouver que les dossiers (pas de fichiers) de c:\ => si vous ne trouvez pas recherchez en ligne : https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-childitem?view=powershell-6
10)	Affichez la liste des fichiers de c:\ (pas les dossiers)
11)	Parcourez l’aide en ligne de get-childItem, trouvez une fonctionnalité qui vous paraît intéressante comprenez-là bien, testez-la et présentez-là


##Exercice 5 : .Net (15 min)

1)	Ecrivez un script Ex5.ps1, ouvrez la console Powershell et positionnez-la sur le répertoire des scripts
2)	Appelez la méthode .Net qui affiche l’heure
3)	En utilisant les appels .Net affichez le message suivante : On est  <nom de la journée d’aujourd’hui>, demain c’est <nom de la journée de demain>
Exemple : On est mardi, demain c’est mercredi 
Si ça s’affiche en anglais, c’est bon aussi ne faites pas la traduction
4)	A l’aide de la classe MessageBox affichez « Bonjour », on est le <date du jour> 
Recherchez la classe, la dll et comment la charger avec powershell sur internet


##Exercice 6 : Création objets (20 min)

1)	Ecrivez un script Ex6.ps1, ouvrez la console Powershell et positionnez-la sur le répertoire des scripts
2)	Instanciez un objet .Net System.DateTime en lui passant des paramètres de telle sortie que la date obtenue soit le 01/01/2000. Affichez le jour de la semaine de cette date
3)	Créez, de 3 façons différentes, un objet ayant 2 propriétés : Nom et Age (donnez des valeurs arbitraires…)
4)	Affichez les répertoires du dossier c:\ en rajoutant une nouvelle propriété nommée ‘MaPropriété’ dont la valeur = <votre nom>.
5)	Exportez le résultat précédent dans un fichier csv nommé root.csv
6)	Refaites la question 4 en utilisant les différentes options de formatage


##Exercice 7 : Variables et tableaux (20 min)

1)	Ecrivez un script Ex7.ps1, ouvrez la console Powershell et positionnez-la sur le répertoire des scripts
2)	Déclarez une variable nommée nom et affectez lui votre nom
3)	Affichez-là
4)	Déclarez une variable nommée age et affectez lui votre âge
5)	Affichez-là
6)	Créez un objet, contenant 2 propriétés : Nom et Age, et affectez le à une variable nommée personne (valeur de Nom = ‘’ et Age = 0)
7)	Affichez les propriétés Nom et Age de la variable personne sur la même ligne
8)	Affectez la valeur de la variable nom à la propriété Nom de l’objet personne
9)	Affectez la valeur de la variable age à la propriétéAge de l’objet personne
10)	Affichez les propriétés Nom et Age de la variable personne sur la même ligne
11)	Déclarez un tableau contenant 3 entiers (choisissez les entiers)
12)	Affichez le 2ème entier du tableau
13)	Rajoutez au tableau un 4ème entier
14)	Affichez le 4ème entier du tableau
15)	Dans une seule ligne, déclarez 4 variables, chacune contenant une entrée du tableau puis affichez-les


##Exercice 8 : opérateurs de comparaison (5 min En binôme)

1)	Formez des binômes
2)	L’un dessine à l’autre un symbole de comparaison, l’autre répond par la syntaxe powershell. Exemple : le 1er montre le symbole >= l’autre répond par -ge.
3)	Répétez l’opération jusqu’à ce qu’il n’y ait plus d’erreurs


##Exercice 9 : Opérateurs (25 min)

1)	Ecrivez un script Ex9.ps1, ouvrez la console Powershell et positionnez-la sur le répertoire des scripts
2)	Testez l’ensemble des opérateurs décrits dans le cours (2 exemples par opérateur), en cas de doute sur un opérateur, cherchez sa définition sur internet.
 

##Exercice 10 : Opérations de base (15 min)

Soit le script suivant : 

$processName = $args[0]
Write-Host "Affichage des processus contenant : $processName"
$p = Get-Process | Where-Object { $_.Name -like "*$processName*" } 
$p | Format-List Id, Name, Description, Product, VM, StartTime

1)	Expliquez ce que fait ce script
2)	Modifiez le script pour obtenir un affichage en format-table


##Exercice 11 : Opérations de base (15 min)

Ecrivez un script qui permet de lister les fichiers qui dépasse une certaine taille (par exemple 1 méga octet). On affiche seulement le nom et la taille du fichier. L’affichage doit se faire du plus lourd vers le plus léger (ordre inverse sur la taille du fichier).


##Exercice 12 : IF (20 min)

Ecrivez un script dans lequel  vous 
1)	Demandez à l’utilisateur d’entrer son nom avec le message « Entrer votre nom : » stockez la valeur saisie dans une variable nom. Faites la même chose pour prenom.

2)	Demandez à l’utilisateur d’entrer son année de naissance avec le message : « Quelle est votre année de naissance ? » stockez l’entrée dans une variable anneeNaissance.

3)	Calculez l’âge à partir de l’année saisie (ne pas prendre en compte les mois) et stockez-le dans une variable age.

4)	En fonction de l’âge calculé, affichez un des messages suivants en remplaçant <age> par l’âge calculé et en gardant tous les caractères y compris les guillemets :

Si age < 21 ans, affichez la ligne suivante 
<age> ans ?! Qu’est-ce que tu es … "récent" :)
	Si age = 21 ou 22, affichez :
	<age> ans !
	Si age > 22, affichez :
Vous avez <age> ans !


##Exercice 13 : Exercice final => jeu de devinette

Ecrivez un script qui définit une valeur aléatoire entre 1 et mille (get-random 1000) et demande à l’utilisateur de la trouver.
A chaque entrée de l’utilisateur, le script indique s’il est au-dessus ou en dessous la valeur à trouver.
Une fois la valeur trouvée, le script affiche un message de félicitations avec le nb de tentatives effectuées pour trouver le nombre.
Qui sera le plus rapide ?
