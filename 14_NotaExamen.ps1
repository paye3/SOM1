<#
.SYNOPSIS
Este script solicita al usuario que introduzca una nota de examen y muestra un mensaje correspondiente según la nota ingresada.

.DESCRIPTION
El script solicita al usuario que introduzca una nota de examen y la almacena en la variable $nota. Luego, se evalúa la nota ingresada y se muestra un mensaje correspondiente según el rango en el que se encuentre la nota.

.PARAMETER nota
La variable $nota almacena la nota de examen ingresada por el usuario.

.NOTES
- El script utiliza la función Read-Host para solicitar al usuario que introduzca la nota.
- La variable $nota se convierte en un número decimal utilizando el tipo de datos [float].
- Se utilizan declaraciones if-elseif-else para evaluar la nota ingresada y mostrar un mensaje correspondiente.

.EXAMPLE
Introduce tu nota de examen
> 7.5
Notable...

.EXAMPLE
Introduce tu nota de examen
> 4.2
INSUFICIENTE

#>
Write-Host "Introduce tu nota de examen"
$nota = Read-Host
$nota = [float]$nota #float sirve para tratar decimales.

if ($nota -ge 0 -and $nota -lt 5){
    echo "INSUFICIENTE"
} elseif ($nota -ge 5 -and $nota -lt 6) {
    <# Acción cuando esta condición es verdadera #>
    echo "Suficiente pincheee!!!"
} elseif ($nota -ge 6 -and $nota -lt 7) {
    <# Acción cuando esta condición es verdadera #>
    echo "Solo bien, esfuerzate más!!"
} elseif ($nota -ge 7 -and $nota -lt 9) {
    <# Acción cuando esta condición es verdadera #>
    echo "Notable..."
} elseif ($nota -ge 9 -and $nota -le 10) {
    <# Acción cuando esta condición es verdadera #>
    echo "¿A quien has copiado?"
} else {
    echo "La nota introducida.... Picha, no inventes!!"
}