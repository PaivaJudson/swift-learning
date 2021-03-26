
import  Foundation

var salaries: [Int] = [500, 410, 620, 586]

for salary in salaries {
    print(salary)
}

for var i in 0..<9 {
    print(i)
}

var comentarios: [String] = []

comentarios.append("comment one")
comentarios.append("comment two")
comentarios.append("comment three")
comentarios.append("comment four")

/*
for comentario in comentarios {
    print(comentario)
}

for var comentario in 0..<comentarios.count {
    print(comentarios[comentario])
}

var contador: Int = 0
while (contador < 5) {
    print("Olá Mundo!")
    contador += 1
}




var contador: Int = 0
repeat {
    print("Olá Mundo!")
    contador += 1
} while (contador < 5)

*/

var intervalo = 1..<5
for item in intervalo {
    print(item)
}

