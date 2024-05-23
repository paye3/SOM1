
Write-Host
$nombre=Read-Host "Escriu el nom per un usuari nou"
$contra=Read-Host "Escriu la contrasenya" -AsSecureString
New-LocalUser -Name $nombre -Password $contra
Write-Host
