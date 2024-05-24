Write-Host "Introdueix l'hora en format 24 (hh:mm):"
$hora = Read-Host

$horaFormat = $hora.Split(":")
$horaNum = $horaFormat[0]

if ($horaNum -lt 12) {
  Write-Output "Bon dia!"
} elseif ($horaNum -lt 18) {
  Write-Output "Bona tarda!"
} else {
  Write-Output "Bona nit!"
}
