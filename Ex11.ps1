$octet = 2000
dir "D:\TRAVAIL\BACH_ASI\FormationPowerShell\Scripts" | Where-Object {$_.length -le $octet} | select Name, Length