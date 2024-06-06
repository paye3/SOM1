<#
.SYNOPSIS
Este script es una calculadora básica que permite realizar operaciones aritméticas simples.

.DESCRIPTION
Este script solicita al usuario dos números y una operación aritmética (+, -, *, /). Luego, realiza la operación seleccionada y muestra el resultado por pantalla.

.PARAMETER num1
El primer número ingresado por el usuario.

.PARAMETER operacio
La operación aritmética seleccionada por el usuario.

.PARAMETER num2
El segundo número ingresado por el usuario.

.OUTPUTS
El resultado de la operación aritmética realizada.

.NOTES
- Este script solo admite números reales.
- Si se intenta dividir por cero, se mostrará un mensaje de error y el script se detendrá.
- Si se ingresa una operación no válida, se mostrará un mensaje de error y el script se detendrá.
#>

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
