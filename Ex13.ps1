$hasard = get-random 1000
$hasard 

$tentative = 0

While ($choix -ne $hasard) {
	
	$choix = Read-Host "Entrer le nombre"
	
	if ($choix -gt $hasard){
		"Vous etes au-dessus de la valeur a trouver"
	}
	else {
		"Vous etes en-dessous de la valeur a trouver"
	}
	
	$tentative = $tentative +1
}

"Vous avez reussi en " + $tentative