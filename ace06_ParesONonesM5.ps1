Write-Host "Batalla Final a 5"
$pGJug = 0
$pGOrd = 0
for ($i = 0; $i -lt 5; $i++) {
    Write-Host "Introdueix par (0) - imparell (1)"
    $DesicioJ = Read-Host
    $DesicioJ = [int]$DesicioJ

    Write-Host "Introdueix un nombre del 0 al 10"
    $numJug = Read-Host
    $numJug = [int]$numJug

    $numOrd = Get-Random -Minimum 0 -Maximum 11
    Write-Host "L'ordenador ha tret $numOrd"

    $ParoImpar = ($numJug + $numOrd) % 2

    if ($ParoImpar -eq 0){
        Write-Host "El nombre es par"
        if ($DesicioJ -eq 0){
            Write-Host "Has guanyat, el nombre es par i has seleccionat par"
            $pGJug = $pGJug + 1
        }else{
            Write-Host "Has perdut, el nombre es par i has seleccionat impar"
            $pGOrd = $pGOrd + 1
        }
    } else {
        Write-Host "El nombre es impar"
        if ($DesicioJ -eq 1){
            Write-Host "Has guanyat, el nombre es impar i has seleccionat impar"
            $pGJug = $pGJug + 1
        }else{
            Write-Host "Has perdut, el nombre es impar i has seleccionat par"
            $pGOrd = $pGOrd + 1
        }
    }
    Write-Host 
    Write-Host "-----------MARCADOR-------------"
    Write-Host "L'ordinador duu $pGOrd guanyades"
    Write-Host "El jugador duu $pGJug guanyades"
    Write-Host

}

if ($pGJug -gt $pGOrd){
    Write-Host "Ha guanyat el jugador!!"
} else{
    Write-Host "Ha guanyat l'ordinador :( "
}
