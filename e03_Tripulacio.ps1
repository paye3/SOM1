Write-Output "Introduce un nombre"
$trip = Read-Host

if($trip -eq "Luffy" -or $trip -eq "Zoro"){
    Write-Output "Mugiwara"
}elseif ($trip -eq "Teach" -or $trip -eq "Burguess") {
    Write-Output "Barbanegra"
    <# Action when this condition is true #>
}elseif ($trip -eq "Shanks" -or $trip -eq "Benn"){
    Write-Output "Pel vermell"
}