<#
.SYNOPSIS
Este script declara y muestra el valor de varias variables.

.DESCRIPTION
Este script declara cuatro variables y muestra su valor utilizando diferentes comandos de salida.

.PARAMETER Variable
La primera variable declarada.

.PARAMETER SOM1
La segunda variable declarada.

.PARAMETER ElNomQueSigui
La tercera variable declarada.

.PARAMETER Extra
La cuarta variable declarada.

.EXAMPLE
PS C:\> .\07_Variable.ps1
Variable 1 declarada: 100
Variable 2 declarada: 200
Variable 3 declarada: 300
Variable 4 declarada: 400
#>

$Variable = 100
$SOM1 = 200
$ElNomQueSigui = 300
$Extra = 400

echo "Variable 1 declarada: $Variable"
Write-Host "Variable 2 declarada: $SOM1"
Write-Output "Variable 3 declarada: $ElNomQueSigui"
echo "Variable 4 declarada: $Extra"
#La meva primera variable
$Variable = 100
$SOM1 = 200
$ElNomQueSigui = 300
$Extra = 400

echo "Variable 1 declarada: $Variable"
Write-Host Variable 2 declarada: $SOM1
Write-Output Variable 3 declarada: $ElNomQueSigui
echo Variable 4 declarada: $Extra