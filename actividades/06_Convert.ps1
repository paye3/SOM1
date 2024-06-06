<#
.SYNOPSIS
Este script convierte un número binario en decimal.

.DESCRIPTION
Este script solicita al usuario que ingrese un número binario y lo convierte a decimal utilizando el método [Convert]::ToInt32() de PowerShell.

.PARAMETER binario
El número binario que se desea convertir a decimal.

.OUTPUTS
El resultado de la conversión a decimal.

.EXAMPLE
Input:
Escrit un numero en binari per pasar-lo a decimal: 1010

Output:
El resultat es: 10
#>

Write-Host "Escriu un numero en octal per pasar-lo a decimal"
$binari = Read-Host 
$resultado = [Convert]::ToInt32($binari,2)
Write-Host  "El resultat es: "$resultado 
Write-Host
