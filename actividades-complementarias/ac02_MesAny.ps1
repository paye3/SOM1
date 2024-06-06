Write-Host "Introdueix un nombre (1-12):"
$mes = Read-Host

$mes = [int]$mes

if ($mes -eq 1) {
  Write-Output "Gener"
} elseif ($mes -eq 2) {
  Write-Output "Febrer"
} elseif ($mes -eq 3) {
  Write-Output "Març"
} elseif ($mes -eq 4) {
  Write-Output "Abril"
} elseif ($mes -eq 5) {
  Write-Output "Maig"
} elseif ($mes -eq 6) {
  Write-Output "Juny"
} elseif ($mes -eq 7) {
  Write-Output "Juliol"
} elseif ($mes -eq 8) {
  Write-Output "Agost"
} elseif ($mes -eq 9) {
  Write-Output "Setembre"
} elseif ($mes -eq 10) {
  Write-Output "Octubre"
} elseif ($mes -eq 11) {
  Write-Output "Novembre"
} elseif ($mes -eq 12) {
  Write-Output "Desembre"
} else {
  Write-Output "Numero no valid."
}
