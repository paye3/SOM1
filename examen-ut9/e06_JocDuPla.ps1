Write-Output "Introdueix dia"
$dia = Read-Host

$pluja = Get-Random -Minimum 0 -Maximum 2
Write-Output "Pluja $pluja"

$aforament = Get-Random -Minimum 0 -Maximum 201
Write-Output "Pluja $aforament"

if ($dia -eq 24){
    if($pluja -eq 0){
        if ($aforament -le 150){
            echo "salen"
        }else{
            echo "Demasiada gente"
        }
    }else{
        echo "Llueve"
    }
}else{
    echo "No es dia 24"
}