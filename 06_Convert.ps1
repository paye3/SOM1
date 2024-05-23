
Write-Host 
$binario = Read-Host "Escrit un numero en binari per pasar-lo a decimal"
$resultado = [Convert]::ToInt32($binario,2)
Write-Host  "El resultat es: "$resultado 
Write-Host 


