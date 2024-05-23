$A = 200
$B = 200

if ($A -lt $B) {
    <# Action to perform if the condition is true #>
    echo "La variable que te el valor $A es menor que la variable que te el valor $B"
} else if ($A -gt $B) {
    <# Action when all if and elseif conditions are false #>
    echo "La variable que te el valor $A es major que la variable que te el valor $B"
} else {
    <# Action when all if and elseif conditions are false #>
    echo "La variable que te el valor $A es igual que la variable que te el valor $B"
}
