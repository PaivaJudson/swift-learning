

class Componente {
    var nome: String
    var preco: Double
    var consumo: Double

    /* 
     * Faz mais sentido o consumo estar associado ao componente...
     */
    init(nome: String, preco: Double, consumo: Double){
        self.nome = nome
        self.preco = preco
        self.consumo = consumo;
    }
}


class Equipamento {
    
    var nome: String
    var listaComponentes: [Componente]

    /* Em seguida é apresentado o construtor da classe 
     * Há necessidade de se fornecer a lista de componentes e esses serem passados como parâmetros
     */
    init(nome: String, listaComponentes: [Componente]) {
        self.nome = nome
        self.listaComponentes = listaComponentes
    }
    

    func getPrecoComponente() -> Double{
        var soma = 0.0;
        for item in listaComponentes {
            soma = soma + item.preco * 1.5
        }
        return soma;
    }

    func getConsumo() -> Double {
        var soma = 0.0
        for item in listaComponentes {
            soma = soma + item.consumo
        }
        return soma
    }

    func getCategoria() -> String {
        if ((self.listaComponentes.count < 10) && (self.getConsumo() >= 500)) {
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
 * Em seguida era possível buscar o preço do equipamento e também a sua categoria de acordo com o enuciado do Problema...

 */

var listaComponetes1:[Componente] = [Componente(nome: "Componente 1", preco: 100.1, consumo: 10), 
                                    Componente(nome: "Componente 2", preco: 100.1, consumo: 10), 
                                    Componente(nome: "Componente 3", preco: 100.1, consumo: 10), 
                                    Componente(nome: "Componente 4", preco: 100.1, consumo: 10), 
                                    Componente(nome: "Componente 5", preco: 100.1, consumo: 10), 
                                    Componente(nome: "Componente 6", preco: 100.1, consumo: 10), 
                                    Componente(nome: "Componente 7", preco: 100.1, consumo: 10), 
                                    Componente(nome: "Componente 8", preco: 100.1, consumo: 10), 
                                    Componente(nome: "Componente 9", preco: 100.1, consumo: 10), 
                                    Componente(nome: "Componente 10", preco: 100.1, consumo: 10), 
                                    Componente(nome: "Componente 11", preco: 100.1, consumo: 10)]

var listaComponetes2:[Componente] = [Componente(nome: "Componente 1", preco: 100.1, consumo: 100), 
                                    Componente(nome: "Componente 2", preco: 100.1, consumo: 100), 
                                    Componente(nome: "Componente 3", preco: 100.1, consumo: 100), 
                                    Componente(nome: "Componente 4", preco: 100.1, consumo: 2000), 
                                    Componente(nome: "Componente 5", preco: 100.1, consumo: 10), 
                                    Componente(nome: "Componente 6", preco: 100.1, consumo: 10), 
                                    Componente(nome: "Componente 7", preco: 100.1, consumo: 10),  
                                    Componente(nome: "Componente 8", preco: 100.1, consumo: 10)]



var equipamento1 = Equipamento(nome: "Equipamento I", listaComponentes: listaComponetes1)
var equipamento2 = Equipamento(nome: "Equipamento II", listaComponentes: listaComponetes2)


print("Preço por equipamento = ",String(equipamento1.getPrecoComponente()))
print("Categoria do equipamento = ", String(equipamento1.getCategoria()))

print("\n")
print("Se adicionar componente no equipamento 2 teremos")
print("\n")
equipamento2.setAdicionarComponentes(componente: Componente(nome: "Componente 9", preco: 100.1, consumo: 10.0))
//equipamento2.setAdicionarComponentes(componente: Componente(nome: "Componente 9", preco: 100.1, consumo: 10.0))

print("Preço por equipamento = ", String(equipamento2.getPrecoComponente()))
print("Categoria do equipamento = ", String(equipamento2.getCategoria()))
print("Cosumo do equipamento = ", String(equipamento2.getConsumo()))

