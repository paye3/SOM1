Write-Host "Quina quantitat de diners portes?"
$diners = Read-Host
$diners = [float]$diners

Write-Host "Que val el producte que vols comprar?"
$preu = Read-Host
$preu = [float]$preu

$quantitat = $diners / $preu

# No entran las funciones matemàticas
$quantitat2 = [math]::floor($quantitat)

Write-Host "Pots comprar un total de $quantitat2 objectes a n'aquest preu $preu"