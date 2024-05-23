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
