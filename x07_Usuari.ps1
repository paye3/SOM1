<#
.SYNOPSIS
Crea un nuevo usuario local con un nombre y contraseña especificados por el usuario.

.DESCRIPTION
Este script solicita al usuario que ingrese un nombre y una contraseña para crear un nuevo usuario local en el sistema. El nombre y la contraseña se utilizan para crear una nueva cuenta de usuario utilizando el cmdlet New-LocalUser.

.PARAMETER nombre
El nombre del nuevo usuario.

.PARAMETER contra
La contraseña del nuevo usuario.

.EXAMPLE
.\x07_Usuari.ps1
Este comando ejecuta el script y solicita al usuario que ingrese un nombre y una contraseña para crear un nuevo usuario local.

#>
Write-Host
$nombre = Read-Host "Escriu el nom per un usuari nou"
$contra = Read-Host "Escriu la contrasenya" -AsSecureString
New-LocalUser -Name $nombre -Password $contra
Write-Host
