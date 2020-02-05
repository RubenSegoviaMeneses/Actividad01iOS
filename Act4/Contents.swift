import Foundation

//Recorre el array de datos por medio de un for e imprime los valores menores a 5
var datos = [3,6,9,2,4,1]
for numeros in datos{
    if(numeros<5){
        print(numeros)
    }
}
print("")
//Funciones de suma y potencia
func suma(a:Int, b:Int) -> Int {
    return a + b
}
func potencia(base:Int, potencia:Int) -> Int {
    return Int(pow(Double(base), Double(potencia)))
}
var resultadoSuma = suma(a:23, b:22)
var resultadoPotencia = potencia(base:2, potencia:2)
print(resultadoSuma)
print(resultadoPotencia)
print("")
//Enumeracion
enum Meses{
    case Enero
    case Febrero
    case Marzo
    case Abril
    case Mayo
    case Junio
    case Julio
    case Agosto
    case Septiembre
    case Octubre
    case Noviembre
    case Diciembre
}
func numeroMes(meses:Meses) -> Int {
    switch meses{
    case .Enero:
    return 1
    case .Febrero:
    return 2
    case .Marzo:
    return 3
    case .Abril:
    return 4
    case .Mayo:
    return 5
    case .Junio:
    return 6
    case .Julio:
    return 7
    case .Agosto:
    return 8
    case .Septiembre:
    return 9
    case .Octubre:
    return 10
    case .Noviembre:
    return 11
    case .Diciembre:
    return 12
    }
}
var imprimirNumeroMes = numeroMes(meses:.Diciembre)
print(imprimirNumeroMes)