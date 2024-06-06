<#
.SYNOPSIS
Este script calcula el número mayor de tres números enteros ingresados por el usuario.

.DESCRIPTION
Este script solicita al usuario que ingrese tres números enteros y luego determina cuál de los tres números es el mayor. El resultado se muestra en la consola.

.PARAMETER num1
El primer número entero ingresado por el usuario.

.PARAMETER num2
El segundo número entero ingresado por el usuario.

.PARAMETER num3
El tercer número entero ingresado por el usuario.

.OUTPUTS
El número mayor de los tres números ingresados por el usuario.

.EXAMPLE
PS C:\> .\19_CalculMajorDe3.ps1
Introdueix el primer nombre enter:
5
Introdueix el segon nombre enter:
8
Introdueix el tercer nombre enter:
3
8 es el major nombre

#>

Write-Host "Introdueix el primer nombre enter:"
$num1 = Read-Host
$num1 = [int]$num1

Write-Host "Introdueix el segon nombre enter:"
$num2 = Read-Host
$num2 = [int]$num2

Write-Host "Introdueix el tercer nombre enter:"
$num3 = Read-Host
$num3 = [int]$num3

if ($num1 -gt $num2 -and $num1 -gt $num3) {
  Write-Output "$num1 es el major nombre"
} elseif ($num2 -gt $num1 -and $num2 -gt $num3) {
  Write-Output "$num2 es el major nombre"
} else {
  Write-Output "$num3 es el major nombre"
}
