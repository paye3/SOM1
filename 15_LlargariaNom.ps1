# Llegim un nom per teclat
Write-Host "Introdueix el teu nom:"
$nomIntroduit = Read-Host

# Convertir la cadena introduida a String
#$nom = $nomIntroduit.ToString()

# Veure si el nom té una llargaria major a 5
if ($nomIntroduit.Length -gt 5) {
  Write-Host "Exit!!"
} else {
  Write-Host "Errorrrrrrrrrrr!!!!!!"
}
