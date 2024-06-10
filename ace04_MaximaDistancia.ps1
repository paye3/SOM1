Write-Host "Quian distancia pots recorrer amb el deposit actual de benzina?"
$Distancia = Read-Host
$Distancia = [int]$Distancia

if ($Distancia -gt 50){
    Write-Host "Pots arribar a Palma!"
} elseif ($Distancia -gt 45) {
    Write-Host "Pots arribar a Algaida"
} elseif ($Distancia -gt 25){
    Write-Host "Pots arribar a Vilafranca"
} elseif ($Distancia -ge 15){
    Write-Host "Pots arribar a Felanitx"
} else {
    Write-Host "Solament arribam a Manacor"
}