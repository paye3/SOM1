Write-Host "Escriu un numero en octal per pasar-lo a decimal"
$octal = Read-Host 
$resultado = [Convert]::ToInt32($octal,8)
Write-Host  "El resultat es: "$resultado 
