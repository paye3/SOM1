Write-Output "Introdueix les condemnes"
$cond = Read-Host
$cond = [int]$cond

Write-Output "Introdueix la quantitat"
$quantitat = Read-Host
$quantitat = [float]$quantitat

if($quantitat -lt 500){
    Write-Output "5 meses"
}elseif ($quantitat -ge 500 -and $quantitat -lt 1000){
    if($cond -eq 0){
        Write-Output "7 meses"
    } else{
        Write-Output "1 any i 5 mesos"
    }
}elseif ($quantitat -ge 1000 -and $quantitat -lt 2000){
    if($cond -eq 0){
        Write-Output "1 any"
    }elseif ($cond -eq 1 or $cond -eq 2){
        Write-Output "2 anys"
    }else{
        Write-Output "3 anys"
    }
}else{
    if ($cond -eq 0){
        Write-Output "1 any i 6 mesos"
    }elseif ($cond -eq 1 -or $cond -eq 2){
        Write-Output "3 anys"
    }else{
        Write-Output "5 anys"
    }
}