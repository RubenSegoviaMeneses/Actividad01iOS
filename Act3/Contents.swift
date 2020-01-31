import Foundation

//4 Variables con 3 tipos de datos.
var inferencia1 = 1
var inferencia2 = 2.5
var inferencia3 = "Inferencia"
var inferencia4 = 4
//2 Variables por asociacion de tipo de datos.
let declarativo1:Int = 2
let declarativo2:String = "Declarativo"

//Array y Dictionary
var numeros  = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var diasSemana = [1:"Lunes", 2:"Martes", 3:"Miercoles", 4:"Jueves", 5:"Viernes",  6:"Sabado", 7:"Domingo"]

//Condicionales y Ciclos
var datos = [3,6,9,2,4,1]
for numeros in datos{
    if(numeros<5){
        print(numeros)
    }
}
