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
    }else{
        Write-Host "Has perdut, el nombre es par i has seleccionat impar"
    }
} else {
    Write-Host "El nombre es impar"
    if ($DesicioJ -eq 1){
        Write-Host "Has guanyat, el nombre es impar i has seleccionat impar"
    }else{
        Write-Host "Has perdut, el nombre es impar i has seleccionat par"
    }
}