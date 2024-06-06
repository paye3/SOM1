<#
.DESCRIPTION
Este script compara dos variables, $A y $B, y muestra un mensaje si $A es menor que $B.

.PARAMETER A
La variable $A que se va a comparar.

.PARAMETER B
La variable $B que se va a comparar.

#>

$A = 300
$B = 200

if ($A -lt $B) {
    <# Acción a realizar si la condición es verdadera #>
    echo "La variable que tiene el valor $A es menor que la variable que tiene el valor $B"
}
$A = 300
$B = 200

if ($A -lt $B) {
    <# Action to perform if the condition is true #>
    echo "La variable que te el valor $A es menor que la variable que te el valor $B"
}