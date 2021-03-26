import Foundation


var numero1: Int
var numero2: Int
var total: Int


numero1 = 10
numero2 = 5

// basta trocar os operadores (-; /; *; %)

total = numero1 + numero2

print(total)

/*
 Operadores Relacionais    
    == (Igual a)
    != (Diferente)
    >  (Maior que )
    <  (Menor que)
    >= (maior ou igual)
    <= (menor ou igual)
*/



/*
 Operadores Lógicos   
    && (e)
    || (ou)
*/

print(numero1 <= numero2)
print(numero1 > numero2)
print(numero1 == numero2)

print((numero1 >= numero2) && (4 > 1))
print((numero1 >= numero2) || (4 < 1))

var preco: Int
var resultado: String

preco = 3500


if (preco >= 100 && preco <= 200) {
    resultado = "Carros populares"    
} 
else if (preco > 200 && preco <= 300)
{
        resultado = "Carros médios"
}
else if (preco > 300 && preco <= 400)
{
        resultado = "Carros de luxos"
}
else 
{
    resultado = "Nenhuma categoria"
}

print(resultado)




