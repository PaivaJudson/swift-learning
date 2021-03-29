

class Componente {
    var nome: String
    var preco: Double

    init(nome: String, preco: Double){
        self.nome = nome
        self.preco = preco
    }
}


class Equipamento {
    
    var nome: String
    var consumo: Double
    var listaComponentes: [Componente]

    /* Em seguida é apresentado o construtor da classe 
     * Há necessidade de se fornecer a lista de componentes e esses serem passados como parâmetros
     */
    init(nome: String, consumo: Double, listaComponentes: [Componente]) {
        self.nome = nome
        self.consumo = consumo
        self.listaComponentes = listaComponentes
    }
    

    func getPrecoComponente() -> Double{
        var soma = 0.0;
        for item in listaComponentes {
            soma = soma + item.preco * 1.5
        }
        return soma;
    }

    func getCategoria() -> String {
        if ((self.listaComponentes.count < 10) && (self.consumo >= 500)) {
            return "A"
        }
        return "B"
    }

    func setAdicionarComponentes(componente: Componente){
        if(!listaComponentes.isEmpty){
            listaComponentes.append(componente) 
        }    
    }

}

/*
 * Testando, primeiro criou-se um Array  de componentes e anexou-se o conjunto de componentes a um equipamento
 * Em seguida era possível buscar o preço do equipamento e també a sua categoria de acordo com o enuciado do Problema...
 */

var listaComponetes1:[Componente] = [Componente(nome: "Componente 1", preco: 100.1), 
                                    Componente(nome: "Componente 2", preco: 100.1), 
                                    Componente(nome: "Componente 3", preco: 100.1), 
                                    Componente(nome: "Componente 4", preco: 100.1), 
                                    Componente(nome: "Componente 5", preco: 100.1), 
                                    Componente(nome: "Componente 6", preco: 100.1), 
                                    Componente(nome: "Componente 7", preco: 100.1), 
                                    Componente(nome: "Componente 8", preco: 100.1), 
                                    Componente(nome: "Componente 9", preco: 100.1), 
                                    Componente(nome: "Componente 10", preco: 100.1), 
                                    Componente(nome: "Componente 11", preco: 100.1)]


var listaComponetes2:[Componente] = [Componente(nome: "Componente 1", preco: 100.1), 
                                    Componente(nome: "Componente 2", preco: 100.1), 
                                    Componente(nome: "Componente 3", preco: 100.1), 
                                    Componente(nome: "Componente 4", preco: 100.1), 
                                    Componente(nome: "Componente 5", preco: 100.1), 
                                    Componente(nome: "Componente 6", preco: 100.1), 
                                    Componente(nome: "Componente 7", preco: 100.1), 
                                    Componente(nome: "Componente 8", preco: 100.1), 
                                    Componente(nome: "Componente 9", preco: 100.1)]                               



var equipamento1 = Equipamento(nome: "Equipamento I", consumo: 500, listaComponentes: listaComponetes2)

print("preço por equipamento = ",String(equipamento1.getPrecoComponente()))
print("Categoria do equipamento = ", String(equipamento1.getCategoria()))

print("\n\n")
print("se adicionar componente no equipamento 1 teremos")
print("\n")

var componente1 = Componente(nome: "Componente 1", preco: 100.1)
equipamento1.setAdicionarComponentes(componente: Componente(nome: "Componente 9", preco: 100.1))
print("preço por equipamento = ",String(equipamento1.getPrecoComponente()))
print("Categoria do equipamento = ", String(equipamento1.getCategoria()))














/*

var componente1 = Componente(nome: "Componente 1", preco: 100.1)
var componente2 = Componente(nome: "Componente 1", preco: 100.1)
var componente3 = Componente(nome: "Componente 1", preco: 100.1)

*/