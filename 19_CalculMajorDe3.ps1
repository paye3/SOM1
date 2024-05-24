Write-Host "Introdueix el primer nombre enter:"
$num1 = Read-Host
$num1 = [int]$num1

Write-Host "Introdueix el segon nombre enter:"
$num2 = Read-Host
$num2 = [int]$num2

Write-Host "Introdueix el tercer nombre enter:"
$num3 = Read-Host
$num3 = [int]$num3

if ($num1 -gt $num2 -and $num1 -gt $num3) {
  Write-Output "$num1 es el major nombre"
} elseif ($num2 -gt $num1 -and $num2 -gt $num3) {
  Write-Output "$num2 es el major nombre"
} else {
  Write-Output "$num3 es el major nombre"
}
