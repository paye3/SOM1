<#
.SYNOPSIS
Este script compara dos variables, $A y $B, y muestra un mensaje dependiendo de la relación entre ellas.

.DESCRIPTION
Este script contiene dos bloques de código que comparan las variables $A y $B. Si $A es menor que $B, se muestra un mensaje indicando que $A es menor que $B. Si $A es mayor que $B, se muestra un mensaje indicando que $A es mayor que $B.

.PARAMETER A
La variable $A que se va a comparar.

.PARAMETER B
La variable $B que se va a comparar.

.NOTES
- Este script asume que las variables $A y $B ya tienen valores asignados.
- Si $A y $B tienen el mismo valor, no se muestra ningún mensaje.

.EXAMPLE
.\09_ComparacioVariablesp2.ps1
    - Muestra el mensaje "La variable que te el valor $A es menor que la variable que te el valor $B" si $A es menor que $B.
    - Muestra el mensaje "La variable que te el valor $A es mayor que la variable que te el valor $B" si $A es mayor que $B.
#>

$A = 200
$B = 200

if ($A -lt $B) {
    <# Acción a realizar si la condición es verdadera #>
    echo "La variable que te el valor $A es menor que la variable que te el valor $B"
}

if ($A -gt $B) {
    <# Acción a realizar si la condición es verdadera #>
    echo "La variable que te el valor $A es mayor que la variable que te el valor $B"
}
$A = 200
$B = 200

if ($A -lt $B) {
    <# Action to perform if the condition is true #>
    echo "La variable que te el valor $A es menor que la variable que te el valor $B"
}

if ($A -gt $B) {
    <# Action to perform if the condition is true #>
    echo "La variable que te el valor $A es major que la variable que te el valor $B"
}
