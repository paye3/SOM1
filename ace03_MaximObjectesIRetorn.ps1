Write-Host "Quina quantitat de diners portes?"
$diners = Read-Host
$diners = [float]$diners

Write-Host "Que val el producte que vols comprar?"
$preu = Read-Host
$preu = [float]$preu

$quantitat = $diners / $preu

# No entran las funciones matemàticas
$quantitatFinal = [math]::floor($quantitat)
$Retorn = ($quantitat-$quantitatFinal) * $preu

Write-Host "Pots comprar un total de $quantitatFinal objectes a n'aquest preu $preu"
Write-Host "El retorn de la compra es $Retorn"