import Foundation


class Casa {

    // atributos da classe
    var cor: String

    // construtor
    init(cor: String) {
        self.cor = cor
    }
    
    // métodos da classe
    func getCor() -> String {
        return self.cor
    }
}


//criação da referência do objecto
var casa1 = Casa(cor: "rosa")
//casa.cor = "rosa"
var casa2 = Casa(cor: "azul")

print(casa1.getCor())
print(casa2.getCor())



class Cachorro {

    var cor: String

    init(cor: String) {
        self.cor = cor
    }
    
    func correr() -> String {
        return "Cachorro correndo muito..."
    }

    func latir() -> String {
        return "Au, Au, Au, Au...."
    }
}


var ca = Cachorro(cor: "preto")

print(ca.latir())
print(ca.correr())









