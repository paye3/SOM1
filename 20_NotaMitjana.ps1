Write-Host "Introdueix la nota de SOM:"
$SOM = Read-Host
$SOM = [float]$SOM
Write-Host "Introdueix la nota de Muntatge:"
$Muntatge = Read-Host
$Muntatge = [float]$Muntatge
Write-Host "Introdueix la nota de Xarxes:"
$Xarxes = Read-Host
$Xarxes = [float]$Xarxes

$notaMitjana = ($SOM + $Muntatge + $Xarxes) / 3

if ($notaMitjana -ge 9) {
  Write-Output "L'alumne ha obtingut un sobresalent.... No inventis, no es bo!!"
} elseif ($notaMitjana -ge 8) {
  Write-Output "L'alumne ha obtingut un 8 o mes de mitjana... Si ja, qui s'ho creu?"
} elseif ($notaMitjana -ge 7) {
  Write-Output "L'alumne ha obtingut un 7 o mes de mitjana... Començam a dir la veritat..Pero te queda"
} elseif ($notaMitjana -ge 6) {
  Write-Output "Ara mos entenem... un be pero ho pots fer millor, confii amb tu!!!"
} else {
  Write-Output "EStodia, m'ho vares diiiiir, ESTUDIAAAA!!!"
}
