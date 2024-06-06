<#
.SYNOPSIS
Calcula la nota media de un alumno y muestra un mensaje según el resultado.

.DESCRIPTION
Este script solicita al usuario las notas de tres asignaturas: SOM (Sistemas Operativos y Mantenimiento), Muntatge (Montaje y Mantenimiento de Equipos) y Xarxes (Redes). Luego, calcula la nota media y muestra un mensaje según el resultado obtenido.

.PARAMETER SOM
La nota de la asignatura SOM.

.PARAMETER Muntatge
La nota de la asignatura Muntatge.

.PARAMETER Xarxes
La nota de la asignatura Xarxes.

.OUTPUTS
El mensaje que indica el resultado obtenido por el alumno.

.EXAMPLE
PS C:\> .\20_NotaMitjana.ps1
Introdueix la nota de SOM: 8
Introdueix la nota de Muntatge: 7
Introdueix la nota de Xarxes: 6
Ara mos entenem... un be pero ho pots fer millor, confii amb tu!!!

#>

Write-Host "Introdueix la nota de SOM:"
$SOM = Read-Host
$SOM = [float]$SOM
Write-Host "Introdueix la nota de Muntatge:"
$Muntatge = Read-Host
$Muntatge = [float]$Muntatge
Write-Host "Introdueix la nota de Xarxes:"
$Xarxes = Read-Host
$Xarxes = [float]$Xarxes

$notaMitjana = ($SOM + $Muntatge + $Xarxes) / 3

if ($notaMitjana -ge 9) {
  Write-Output "L'alumne ha obtingut un excelent.... No inventis, no es bo!!"
} elseif ($notaMitjana -ge 8) {
  Write-Output "L'alumne ha obtingut un 8 o mes de mitjana... Si ja, qui s'ho creu?"
} elseif ($notaMitjana -ge 7) {
  Write-Output "L'alumne ha obtingut un 7 o mes de mitjana... Començam a dir la veritat..Pero te queda"
} elseif ($notaMitjana -ge 6) {
  Write-Output "Ara mos entenem... un be pero ho pots fer millor, confii amb tu!!!"
} else {
  Write-Output "EStodia, m'ho vares diiiiir, ESTUDIAAAA!!!"
}
