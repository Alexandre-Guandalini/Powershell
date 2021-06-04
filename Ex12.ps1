$nom = Read-Host "Entrer votre nom"
$prenom = Read-Host "Entrer votre prenom"
$anneeNaissance = Read-Host "Quelle est votre annee de naissance ? "

$age =  (([System.DateTime]::Now). Year ) -  $anneeNaissance
$age

if ($age -lt 21) {
	"" + $age + "" + "ans ?! Qu'est-ce que tu es…" +  "récent " + ":)"
}

if ($age -eq (21 -or 22)) {
	"" + $age + " ans!"
}

if ($age -gt 22) {
	"Vous avez " + "" + $age + " ans!"
}