# Inicialitzam variables
$sum = 0
$i = 1

# Feim el bucle de 1 fins a 20
for ($i; $i -le 20; $i++) {
  # Es va sumant el valor per a cada iteració
  $sum = $sum + $i
  #echo $sum
}

# Imprimim resultats
Write-Output "La suma dels primers 20 nombres es: $sum"
