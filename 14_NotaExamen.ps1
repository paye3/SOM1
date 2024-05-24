Write-Host "Introduce tu nota de examen"
$nota = Read-Host
$nota = [float]$nota #float sirve para tratar decimales.

if ($nota -ge 0 -and $nota -lt 5){
    echo "INSUFICIENTE"
} elseif ($nota -ge 5 -and $nota -lt 6) {
    <# Action when this condition is true #>
    echo "Suficiente pincheee!!!"
} elseif ($nota -ge 6 -and $nota -lt 7) {
    <# Action when this condition is true #>
    echo "Solo bien, esfuerzate más!!"
} elseif ($nota -ge 7 -and $nota -lt 9) {
    <# Action when this condition is true #>
    echo "Notable..."
} elseif ($nota -ge 9 -and $nota -le 10) {
    <# Action when this condition is true #>
    echo "¿A quien has copiado?"
} else {
    echo "La nota introducida.... Picha, no inventes!!"
}