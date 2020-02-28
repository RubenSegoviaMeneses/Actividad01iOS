import Foundation

//Valor por tipo y referencia
var costo_referencia:[Float] = [8.3,10.5,9.9]
var indice:Int = 0
for i in costo_referencia{
    costo_referencia[indice] = i*1.16
    indice += 1
}
for element in costo_referencia {
  print(element)
}
func impuesto(costo_referencia:[Float]) -> [Float] {
    var resultado:[Float] = []
    for i in costo_referencia{
        resultado.append(i*1.16)
    }
    return resultado
}
print("Valores con impuesto: ",impuesto(costo_referencia:[8.3,10.5,9.9]))
let suma = {(a:Int, b:Int) -> Int in return a + b}
func sumaTres(x:Int, y:Int, z:Int) -> Int  {
    return suma(x, y) + z
}
print("Resultado: ",sumaTres(x:4,y:8,z:10),"\n")

//Funciones personalizadas y genericas
func cambioValor(x:Int, y:Int) -> (Int, Int){
    var x = x;
    var y = y;
    var z = x;
    x = y;
    y = z;
    return (x,y); 
}
print("Cambio valor: ",cambioValor(x:28, y:82));
let multiplicacion = {(x:Int, y:Int) -> Int in return x * y}
func Transformar (a:[Int], b:Int) -> [Int]{
    var resultadoDos: [Int] = [];
    var limite = a.count - 1;
    for index in 0...limite{
        resultadoDos.append(multiplicacion(a[index],b));
    }
    return resultadoDos;
}
var datos = [3,7,9,2];
print("Original: ",datos);
print("Editado: ",Transformar(a:datos, b:4),"\n");

//Libreria
var precios = [4.2, 5.3, 8.2, 4.5]
var impuestos = precios.map{z in return (z * 1.16)}
print("Libreria map: ", impuestos)
var precio_menor = impuestos.filter{impuestos in impuestos > 6}
print("Libreria filter: ", precio_menor)