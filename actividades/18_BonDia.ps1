<#
.SYNOPSIS
Este script muestra un saludo dependiendo de la hora introducida por el usuario.

.DESCRIPTION
Este script solicita al usuario que introduzca la hora en formato 24 horas (hh:mm). Luego, determina si es por la mañana, tarde o noche y muestra un saludo correspondiente.

.PARAMETER hora
La hora introducida por el usuario en formato 24 horas (hh:mm).

.OUTPUTS
El saludo correspondiente a la hora introducida por el usuario.

.EXAMPLE
Introdueix l'hora en format 24 (hh:mm):
> 09:30
Bon dia!

Introdueix l'hora en format 24 (hh:mm):
> 15:45
Bona tarda!

Introdueix l'hora en format 24 (hh:mm):
> 20:00
Bona nit!
#>

Write-Host "Introdueix l'hora en format 24 (hh:mm):"
$hora = Read-Host

$horaFormat = $hora.Split(":")
$horaNum = $horaFormat[0]

if ($horaNum -lt 12) {
  Write-Output "Bon dia!"
} elseif ($horaNum -lt 18) {
  Write-Output "Bona tarda!"
} else {
  Write-Output "Bona nit!"
}
