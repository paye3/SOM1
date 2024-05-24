Write-Host "Introdueix el primer nombre:"
$num1 = Read-Host
$num1 = [float]$num1

Write-Host "Introdueix la operacio (+, -, *, /):"
$operacio = Read-Host

Write-Host "Introdueix el segon nombre:"
$num2 = Read-Host
$num2 = [float]$num2

if ($operacio -eq "+") {
  $resultat = $num1 + $num2
} elseif ($operacio -eq "-") {
  $resultat = $num1 - $num2
} elseif ($operacio -eq "*") {
  $resultat = $num1 * $num2
} elseif ($operacio -eq "/") {
  if ($num2 -ne 0) {
    $resultat = $num1 / $num2
  } else {
    Write-Output "No es pot dividir per zero!"
    exit
  }
} else {
  Write-Output "Operacio no valida!"
  exit
}

Write-Output "El resultat es:", $resultat
