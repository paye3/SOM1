$PartidasGanadasJugador =0;
$PartidasGanadasOrdenador =0;

for ($i = 0;$PartidasGanadasJugador -lt 3 -and $PartidasGanadasOrdenador -lt 3; $i++) {
    <# Action that will repeat until the condition is met #>

    Write-Output "seleciona piedra,papel o tijeras"
    $eleccionjugador =Read-Host
    #0 -piedra/2-tijeras/1-papel#
    if ($eleccionjugador -eq "piedra") {
        <# Action to perform if the condition is true #>
        $eleccion =0
    }elseif ($eleccionjugador -eq "papel") {
        <# Action when this condition is true #>
        $eleccion =1
    }else {
        
        $eleccion =2
    }
    $eleccionordenador =Get-Random -Minimum 0 -Maximum 3
    if ($eleccionordenador -eq 0) {
        echo "Ordenador Piedra"
        <# Action to perform if the condition is true #>
    } elseif ($eleccionordenador -eq 1){
        echo "Ordenador Papel"
    } else {
        echo "Tijera"
    }
    if ($eleccion -eq 0) {
        <# Action to perform if the condition is true #>
        if ($eleccionordenador -eq 0) {
        <# Action to perform if the condition is true #>
            echo "empate"
        }elseif ($eleccionordenador -eq 1) {
        <# Action when this condition is true #>
            echo "perdistes"
            $PartidasGanadasOrdenador = $PartidasGanadasOrdenador+1
        }else {
        <# Action when all if and elseif conditions are false #>
            echo "ganaste"
            $PartidasGanadasJugador = $PartidasGanadasJugador+1
        }
    } 

    if ($eleccion -eq 1) {
        <# Action to perform if the condition is true #>
        if ($eleccionordenador -eq 0) {
        <# Action to perform if the condition is true #>
            echo "ganaste"
            $PartidasGanadasJugador = $PartidasGanadasJugador +1
        }elseif ($eleccionordenador -eq 1) {
        <# Action when this condition is true #>
            echo "empate"
        }else {
            echo "perdistes"
            $PartidasGanadasOrdenador = $PartidasGanadasOrdenador+1
        }
    }

    if ($eleccion -eq 2) {
        <# Action to perform if the condition is true #>
        if ($eleccionordenador -eq 0) {
        <# Action to perform if the condition is true #>
            echo "perdistes"
            $PartidasGanadasOrdenador = $PartidasGanadasOrdenador+1
        } elseif ($eleccionordenador -eq 1) {
        <# Action when this condition is true #>
        echo "ganastes"
        $PartidasGanadasJugador = $PartidasGanadasJugador+1
        } else {  
        echo "empate"
        }
    }#cuando vuelvas a poner un if date cuenta que te va a aparecer otro corchete
    echo "Partidas ganadas jugador: $PartidasGanadasJugador"
    echo "Partidas ganadas ordenador: $PartidasGanadasOrdenador"
}

if ($PartidasGanadasJugador -gt $PartidasGanadasOrdenador){
    echo "Has ganado"
} else {
    "Has perdido"
}