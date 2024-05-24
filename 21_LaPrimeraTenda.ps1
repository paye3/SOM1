Write-Host "Introdueix el preu del producte:"
$preu = Read-Host
$preu = [float]$preu

Write-Host "Introdueix la quantitat:"
$quantitat = Read-Host
$quantitat = [int]$quantitat

if ($preu * $quantitat -ge 50) {
  $descompte = $preu * $quantitat * 0.05
} else {
  $descompte = 0
}

$preuFinal = $preu * $quantitat - $descompte

Write-Output "El preu total es:", $preuFinal
Write-Output "Descompte aplicat:", $descompte
