/*
* Trabalhando com dicionários 
*/

import Cocoa


var animais = [String: String]()

animais["urso"] = "Animal branco que hiberna..."
animais["cachorro"] = "Melhor amigo do homem..."

print(animais)
print(animais["urso"]!)


var meses = [Int: String]()

meses[1] = "Janeiro"
meses[2] = "Fevereiro"
meses[3] = "Março"
meses[4] = "Abril"
meses[5] = "Maio"
meses[6] = "Junho"
meses[7] = "Julho"
meses[8] = "Agosto"
meses[9] = "Setembro"
meses[10] = "Outubro"
meses[11] = "Novembro"
meses[12] = "Dezembro"

print(meses) 
print(meses[5]!)   