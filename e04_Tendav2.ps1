Write-Output "Introduce cantidad"
$cantidad = Read-Host
$cantidad = [float]$cantidad


Write-Output "Introduce precio"
$precio = Read-Host
$precio = [float]$precio

$precioFinal = $precio*$cantidad

if ($precioFinal -ge 200){
    $Descuento = $precioFinal*0.125
+
}elseif ($precioFinal -gt 150){
    $Descuento = $precioFinal*0.1

}elseif ($precioFinal -gt 100){
    $Descuento = $precioFinal*0.07

}elseif ($precioFinal -ge 50){
    $Descuento = $precioFinal*0.05
    
}else {
    $Descuento=0
}

$precioFinal = $precioFinal-$Descuento
Write-Output "El precio Final es $precioFinal"
Write-Output "El descuento es $Descuento
