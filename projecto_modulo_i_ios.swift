import Foundation

//Classe
class Mulher {

    // Atributos de uma classe
    var nome: String
    var gestacao: Int
    var temp: Double

    // Construtor de classe
    init(nome: String, gestacao: Int, temp: Double) {
        self.nome = nome
        self.gestacao = gestacao
        self.temp = temp
    }
    
    
}

//inicialização do array contendo todas as mulheres 
var arrayMulheres: [Mulher] = [] 
    
// função que adiciona uma mulher no Array    
func adicionarPaciente(mulher: Mulher){
     arrayMulheres.append(mulher)
}

// procurar no array uma mulher pelo nome e retornar a semanas de gestação


// procurar a mulher com maior temperatura


// contar as mulheres com temperatura normal 


