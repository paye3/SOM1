<#
.SYNOPSIS
Este script verifica la longitud de una contraseña introducida por el usuario.

.DESCRIPTION
Este script solicita al usuario que introduzca una contraseña de al menos 8 caracteres y luego verifica la longitud de la contraseña introducida. Si la longitud es mayor a 7 caracteres, se muestra un mensaje indicando que la longitud es mayor a 7. De lo contrario, se muestra un mensaje de error.

.PARAMETER ContrasenyaIntroduida
La contraseña introducida por el usuario en formato seguro.

.EXAMPLE
Introdueix la teva contrasenya d'una llargaria de 8
********
La llargaria es major a 7

.EXAMPLE
Introdueix la teva contrasenya d'una llargaria de 8
******
Error en la contrasenya!!!!

.NOTES
- Este script requiere PowerShell 3.0 o superior.
- Este script no almacena ni muestra la contraseña introducida por el usuario.
#>

# Lletgim la contrasenya en format segur
Write-Host "Introdueix la teva contrasenya d'una llargaria de 8"
$ContrasenyaIntroduida = Read-Host -AsSecureString

# Convertir el número a cadena de texto
#$Contrasenya = $ContrasenyaIntroduida.ToString()

# Comparar la llargaria de la contrasenya introduida
if ($ContrasenyaIntroduida.Length -gt 7) {
  Write-Host "La llargaria es major a 7"
} else {
  Write-Host "Error en la contrasenya!!!!"
}
