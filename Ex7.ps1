$nom = "alexandre"
$nom
$age = "22"
$age

$personne = [PSCustomObject]@{ 
Nom = '' 
Age = '0' 
} 

$personne.Nom
$personne.Age

$ligne = $personne.Nom + "   " + $personne.Age
$ligne

$personne.Nom = $nom
$personne.Age = $age

$Newligne = $personne.Nom + "  " + $personne.Age
$Newligne

$TableauInt = 1,2,3
$TableauInt
 
$a = $TableauInt[0] 
$b = $TableauInt[1] 
$c = $TableauInt[2]
$b 

$TableauInt2 = 4

$AddTableau = $TableauInt + $TableauInt2
$AddTableau
