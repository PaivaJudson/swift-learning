
var valor1: Int 
var valor2: Int?
var total: Int = 0

valor1 = 10
valor2 = 1


if let valor2Testado = valor2 {
    total = valor1 + valor2Testado
}

print(total)