Write-Host "Introdueix un nombre:"
$num = Read-Host
$num = [int]$num

if ($num % 2 -eq 0) {
    Write-Output "$num es un nombre parell"
} else {
    Write-Output "$num es un nombre imparell"
}
