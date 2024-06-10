Write-Host "Introdueix un nombre"
$num1 = Read-Host
$num1 = [float]$num1

Write-Host "Introdueix un segon nombre"
$num2 = Read-Host
$num2 = [float]$num2

if ($num1 -gt $num2){
    $total = $num1/$num2
    Write-Host "La divisio de $num1 per $num2 es $total"
} elseif ($num2 -gt $num1) {
    $total = $num2/$num1
    Write-Host "La divisio de $num2 per $num1 es $total"
} else {
    Write-Host "Els nombres introduits son iguals. La divisió es 1"
}