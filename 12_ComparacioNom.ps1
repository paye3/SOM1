<#
.SYNOPSIS
Este script compara dos nombres y muestra un mensaje indicando si son iguales o diferentes.

.DESCRIPTION
Este script compara dos nombres, $Nom1 y $Nom2, y muestra un mensaje indicando si son iguales o diferentes. Si los nombres son iguales, se mostrará el mensaje "Els noms son iguals". Si los nombres son diferentes, se mostrará el mensaje "Els noms son distints".

.PARAMETER Nom1
El primer nombre a comparar.

.PARAMETER Nom2
El segundo nombre a comparar.

.NOTES
- Este script asume que los nombres son cadenas de texto.
- Si los nombres son sensibles a mayúsculas y minúsculas, se debe utilizar el operador -ceq en lugar de -eq para la comparación.

.EXAMPLE
.\12_ComparacioNom.ps1
# Muestra el mensaje "Els noms son distints."

.EXAMPLE
$Nom1 = "Joan"
$Nom2 = "Joan"
.\12_ComparacioNom.ps1
# Muestra el mensaje "Els noms son iguals".
#>

# Inicialitzam variables
$Nom1 = "Joan"
$Nom2 = "Jordi"

# Comparar la cadena de texto con "Joan"
if ($Nom1 -eq $Nom2) {
  Write-Host "Els noms son iguals"
} else {
  Write-Host "Els noms son distints."
}
