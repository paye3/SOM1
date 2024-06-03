<#
.SYNOPSIS
Este script solicita al usuario que introduzca su nombre y verifica si la longitud del nombre es mayor a 5 caracteres.

.DESCRIPTION
Este script solicita al usuario que introduzca su nombre y luego verifica si la longitud del nombre introducido es mayor a 5 caracteres. Si la longitud es mayor a 5, muestra el mensaje "Exit!!". Si la longitud es menor o igual a 5, muestra el mensaje "Errorrrrrrrrrrr!!!!!!".

.PARAMETER nomIntroduit
El nombre introducido por el usuario.

.EXAMPLE
Introdueix el teu nom:
John
Exit!!

.EXAMPLE
Introdueix el teu nom:
Jane
Errorrrrrrrrrrr!!!!!!
#>

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
