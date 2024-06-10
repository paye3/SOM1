Write-Host "Quina quantitat de diners portes?"
$diners = Read-Host
$diners = [float]$diners

Write-Host "Que val el producte que vols comprar?"
$preu = Read-Host
$preu = [float]$preu


$quantitat = $diners / $preu
$quantitat = [math]::round($quantitat)

Write-Host "Pots comprar un total de $quantitat objectes a n'aquest preu $preu"