Write-Output "Introduce un numero"
$num1 = Read-Host
Write-Output "Introduce otro numero"
$num2 = Read-Host

$num1 = [int]$num1
$num2 = [int]$num2

if ($num1 -gt $num2){
    Write-Output "$num1 mayor"
    Write-Output "LA resta es: " $num1-$num2
} elseif ($num2 -gt $num1) {
    <# Action when this condition is true #>
    Write-Output "$num2 mayor"
    Write-Output "LA resta es: " $num2-$num1
} else{
    Write-Output "Son iguales"
}