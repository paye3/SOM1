Write-Host "Quina quantitat de diners portes?"
$diners = Read-Host
$diners = [int]$diners

Write-Host "Que val el producte que vols comprar?"
$preu = Read-Host
$preu = [int]$preu


[int]$quantitat = $diners / $preu


Write-Host "Pots comprar un total de $quantitat objectes a n'aquest preu $preu"