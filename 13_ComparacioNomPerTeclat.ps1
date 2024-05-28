<#
.SYNOPSIS
Este script permite al usuario introducir un nombre por teclado y luego compara ese nombre con una lista de nombres predefinidos.

.DESCRIPTION
El script solicita al usuario que introduzca su nombre por teclado. Luego, compara el nombre introducido con una serie de nombres predefinidos, como "Joan", "Jordi", "Izan", "Peter" y "Erik". Si el nombre introducido coincide con alguno de los nombres predefinidos, se muestra un mensaje correspondiente. Si el nombre introducido no coincide con ninguno de los nombres predefinidos, se muestra un mensaje indicando que es un nombre diferente.

.PARAMETER None

.INPUTS
El script solicita al usuario que introduzca un nombre por teclado.

.OUTPUTS
El script muestra mensajes en la consola dependiendo del nombre introducido.

.EXAMPLE
Introdueix el teu nom:
> Joan
El nom introduit es Joan.

.EXAMPLE
Introdueix el teu nom:
> Izan
El nom introduit es Izan.

.EXAMPLE
Introdueix el teu nom:
> Maria
Es un nom diferent a Joan, Jordi, Izan, Peter o Erik
#>

# Lletgim un nom per teclat
Write-Host "Introdueix el teu nom:"
$nom = Read-Host

# Convertim el que lletgim a String
#$nom = $nomIntroduit.ToString()

# Comparar la cadena de text amb distints noms
if ($nom -eq "Joan") {
  Write-Host "El nom introduit es Joan."
} elseif ($nom -eq "Jordi") {
  Write-Host "El nom introduit es Jordi."
} elseif ($nom -eq "Izan") {
  <# Action when this condition is true #>
  Write-Host "El nom introduit es Izan."
} elseif ($nom -eq "Peter") {
  <# Action when this condition is true #>
  Write-Host "El nom introduit es Peter."
} elseif ($nom -eq "Erik") {
  <# Action when this condition is true #>
  Write-Host "El nom introduit es Erik."
} else {
  <# Action when all if and elseif conditions are false #>
  Write-Host "Es un nom diferent a Joan, Jordi, Izan, Peter o Erik"
}
