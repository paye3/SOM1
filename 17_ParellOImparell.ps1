<#
.SYNOPSIS
Este script determina si un número ingresado por el usuario es par o impar.

.DESCRIPTION
Este script solicita al usuario que ingrese un número y luego verifica si el número es par o impar. 
Si el número es divisible por 2 sin dejar residuo, se considera par. De lo contrario, se considera impar.

.PARAMETER num
El número ingresado por el usuario.

.OUTPUTS
El resultado de la verificación, indicando si el número es par o impar.

.EXAMPLE
Introdueix un nombre:
4
4 es un nombre parell

Introdueix un nombre:
7
7 es un nombre imparell
#>

Write-Host "Introdueix un nombre:"
$num = Read-Host
$num = [int]$num

if ($num % 2 -eq 0) {
    Write-Output "$num es un nombre parell"
} else {
    Write-Output "$num es un nombre imparell"
}
