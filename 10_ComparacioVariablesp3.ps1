# Variables de ejemplo
$A = 200
$B = 200

# Comprueba si $A es menor que $B
if ($A -lt $B) {
    <# Acción a realizar si la condición es verdadera #>
    echo "La variable que tiene el valor $A es menor que la variable que tiene el valor $B"
} else {
    <# Acción cuando todas las condiciones if y elseif son falsas #>
    echo "La variable que tiene el valor $A es mayor que la variable que tiene el valor $B"
}
