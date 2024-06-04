$pgLlubi =0
$pgPollensa =0
$gTLlubi
$gTPollensa

for ($i = 0; $i -lt 5 ;$i = $i+1) {

    $GolesLlubi = Get-Random -Minimum 0 -Maximum 5
    $GolesPollensa = Get-Random -Minimum 0 -Maximum 5

    Write-Output "Partido Llubi $GolesLlubi - Pollensa $GolesPollensa"
    if ($GolesLlubi -gt $GolesPollensa){
        Write-Output "Gana Llubi"
        $pgLlubi = $pgLlubi +1
    }elseif ($GolesPollensa -gt $GolesLlubi){
        Write-Output "Gana Pollensa"
        $pgPollensa = $pgPollensa +1
    }else{
        Write-Output "Empate"
    }

    $gTLlubi = $gTLlubi+$GolesLlubi
    $gTPollensa = $gTPollensa+$GolesPollensa
}

if($pgLlubi -gt $pgPollensa){
    Write-Output "Gana Llubi la final"
} elseif ($pgPollensa -gt $pgLlubi){
    Write-Output "Gana Pollensa la final"
}else{
    if ($gTLlubi -gt $gTPollensa){
        Write-Output "Gana Llubi"
    }elseif($gTPollensa -gt $gTLlubi){
        Write-Output "Gana Pollensa"
    }else{
        Write-Output "Emapte final"
    }
}