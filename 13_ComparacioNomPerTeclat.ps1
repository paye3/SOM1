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
