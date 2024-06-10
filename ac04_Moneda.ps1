Write-Host "Introdueix cara o creu (c/c):"
$opcio = Read-Host

$resultat = Get-Random -Minimum 1 -Maximum 2

if ($resultat -eq 1) {
  $caraCreu = "cara"
} else {
  $caraCreu = "creu"
}

if ($opcio -eq $caraCreu) {
  Write-Output "Has guanyat!"
} else {
  Write-Output "Has perdut!"
}
