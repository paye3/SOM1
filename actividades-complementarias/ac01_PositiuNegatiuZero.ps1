Write-Host "Introdueix un nombre:"
$num = Read-Host

$num = [int]$num

if ($num -gt 0) {
  Write-Output "El nombre és positiu."
} elseif ($num -lt 0) {
  Write-Output "El nombre és negatiu."
} else {
  Write-Output "El nombre és zero."
}
