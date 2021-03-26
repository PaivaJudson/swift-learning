import Foundation

func multiplicar(numero1: Int, numero2: Int){
    print(numero1 * numero2)
}

func somar(x: Int, y:Int) -> Int {
    return x + y
}

var valor: Int = somar(x: 2, y: 3)
multiplicar(numero1: 3, numero2: valor)


func calcularIdade(anoNascimento: Int) -> Int {
    return 2021 - anoNascimento
}

print(calcularIdade(anoNascimento: 1994))