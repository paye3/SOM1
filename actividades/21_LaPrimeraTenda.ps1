<#
.SYNOPSIS
Calcula el precio total de un producto aplicando un posible descuento.

.DESCRIPTION
Este script solicita al usuario el precio de un producto y la cantidad deseada. Luego, calcula el precio total teniendo en cuenta un posible descuento del 5% si el precio total supera los 50. Finalmente, muestra el precio total y el descuento aplicado.

.PARAMETER preu
El precio unitario del producto.

.PARAMETER quantitat
La cantidad deseada del producto.

.EXAMPLE
.\21_LaPrimeraTenda.ps1
Introdueix el preu del producte:
50
Introdueix la quantitat:
2
El preu total es: 95
Descompte aplicat: 5

.NOTES
Este script asume que el usuario ingresará valores numéricos válidos para el precio y la cantidad.
#>

Write-Host "Introdueix el preu del producte:"
$preu = Read-Host
$preu = [float]$preu

Write-Host "Introdueix la quantitat:"
$quantitat = Read-Host
$quantitat = [int]$quantitat

if ($preu * $quantitat -ge 50) {
  $descompte = $preu * $quantitat * 0.05
} else {
  $descompte = 0
}

$preuFinal = $preu * $quantitat - $descompte

Write-Output "El preu total es:", $preuFinal
Write-Output "Descompte aplicat:", $descompte
