import Foundation
//Clase Persona se mandan valores e imprimen
class Persona {
    var nombre = ""
    var pasos = 0
    func saludar(nombre:String){
        self.nombre = nombre
    }
    func caminar(pasos:Int){
        self.pasos = pasos
    }
}
var ruben = Persona()
ruben.saludar(nombre:"Ruben")
ruben.caminar(pasos:34)
print("Dio \(ruben.pasos) pasos")
print("\(ruben.nombre) mucho gusto")
//Struct Pantalla con un constructor 
// y variable para inicializar
struct Pantalla {
    var alto:Int
    var ancho:Int
    init(alto:Int, ancho:Int) {
        self.alto = alto
        self.ancho = ancho
    }
}
var pantallaUNO = Pantalla(alto:1920, ancho:1080)
//Extensions
extension Int {
    func horas() -> Int {
        return self*3600
    }
}
print("\(3.horas()) segundos")
extension String {
    func domingo() -> String {
        return "Domingo = 1"
    }
    func lunes() -> String {
        return "Lunes = 2"
    }
    func martes() -> String {
        return "Martes = 3"
    }
    func miercoles() -> String {
        return "Miercoles = 4"
    }
    func jueves() -> String {
        return "Jueves = 5"
    }
    func viernes() -> String {
        return "Viernes = 6"
    }
    func sabado() -> String {
        return "Sabado = 7"
    }
}
//No entendi bien como hacerlo pero regresa el valor cambiando la funcion que se llama
print("\("".viernes())")
//Optional de int
var numeroPendiente:Int?
//Coleccion dias con variable opcional para recibir el valor DF
let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]
var diasOpcional:Int?
diasOpcional = dias["DF"]
if let temp = dias["DF"]{
    print("Si")
} else {
    print("No")
}