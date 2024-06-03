Write-Host "Introdueix la distància del viatge en quilòmetres:"
$distancia = Read-Host

$distancia = [float]$distancia

if ($distancia -lt 5) {
  $tarifa = 2
} elseif ($distancia -ge 5 -and $distancia -lt 10) {
  $tarifa = 2.5
} else {
  $tarifa = 3

  if ($distancia -gt 20) {
    $tarifa += ($distancia - 20) * 0.1
  }
}

Write-Output "La tarifa del viatge és de $tarifa €."
