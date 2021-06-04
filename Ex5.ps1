$Object = [System.DateTime]::Now
$day = $Object.DayOfWeek
$day2 = ($Object.AddDays(1)).DayOfWeek

[System.Windows.Forms.MessageBox]::Show("On est " + "" + $day + ", demain c’est" + " " + $day2)