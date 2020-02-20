import Foundation

infix operator ^^
func ^^ (a:Int, b:Int) -> Int {
    return Int(pow(Double(a), Double(b)))
}
let resultado = 2 ^^ 2
print("El resultado es: \(resultado)")
var numeros = [2,3,4,5] //No e logrado que funcione por medio de un operador.
numeros.sort()
print(numeros)

//Subscript
class Cantidad {
    let numeros = [2,3,4,5]
    var numerosSub:[Int]
    init(valor:[Int]) {
        self.numerosSub = valor
    }
    subscript(valorSub:Int)-> Int{
        get{
            return numerosSub[valorSub]
        }
        set(nuevoValor){
            numerosSub[valorSub] = nuevoValor
        }
    }
}
let v1 = Cantidad(valor:numeros)
v1[2] = 14
print(v1.numerosSub[2])

class Personaje{//No entendi muy bien las instrucciones que querian que hiciera
    struct CGPoint{
        let enemigo = [5,10]
        var enemigoPosicion:[Int]
        init(enemigo:[Int]){
            self.enemigoPosicion = enemigo
        }
        subscript(posicion:Int) -> Int{
            get{
                return enemigoPosicion[posicion]
            }
            set(nuevaPosicion) {
                enemigoPosicion[posicion] = nuevaPosicion
            }
        }
    }
}

let coleccion = ["A":1, "B":2, "C":3]
func ExisteValor(indice:String){
    guard let existe = coleccion[indice] else {
        print("No existe el valor: \(indice)")
        return
    }
    print("Indice: \(indice) Valor:  \(existe)")
}
ExisteValor(indice:"B")
ExisteValor(indice:"D")
