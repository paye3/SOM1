<#
.SYNOPSIS
Este script compara dos variables, $A y $B, y muestra un mensaje dependiendo de su relación.

.DESCRIPTION
Este script compara dos variables, $A y $B, y muestra un mensaje dependiendo de su relación. Si $A es menor que $B, se mostrará un mensaje indicando que $A es menor que $B. Si $A es mayor que $B, se mostrará un mensaje indicando que $A es mayor que $B. Si $A es igual a $B, se mostrará un mensaje indicando que $A es igual a $B.

.PARAMETER A
La variable $A que se va a comparar.

.PARAMETER B
La variable $B que se va a comparar.

.EXAMPLE
.\11_ComparacioVariablesp4.ps1
Muestra el mensaje "La variable que te el valor 200 es igual que la variable que te el valor 200".

.INPUTS
No se requiere entrada.

.OUTPUTS
No se produce ninguna salida.

#>
$A = 200
$B = 200

if ($A -lt $B) {
    <# Acción a realizar si la condición es verdadera #>
    echo "La variable que te el valor $A es menor que la variable que te el valor $B"
} elseif ($A -gt $B) {
    <# Acción a realizar si todas las condiciones if y elseif son falsas #>
    echo "La variable que te el valor $A es mayor que la variable que te el valor $B"
} else {
    <# Acción a realizar si todas las condiciones if y elseif son falsas #>
    echo "La variable que te el valor $A es igual que la variable que te el valor $B"
}
