import UIKit

//1-

let amigos = 1000
print(amigos)

//amigos -= 50
print("Left side of mutating operator isn't mutable: 'amigos' is a 'let' constant")

//2-

let pasosDiarios = 10000
print("Tu objetivo de pasos para hoy es:")
print(pasosDiarios)

//3-

var anosFormacion = 10
print(anosFormacion)
anosFormacion += 1
print(anosFormacion)
print("el codigo se diferencia en que ahora tratamos con var y antes con let")

//4-

var pasos = 0
print(pasos)
pasos += 2000
print(pasos)
print("¡Buen trabajo, vas bien para conseguir tu objetivo diario!")

//5-

var numLikes = 100
var numComentarios = 30
let ano = 2020
let mes = 12
let dia = 25

//6-

let nombre = "Roberto"
print("nombre es una constante porque se supone que no se cambiara el nombre")

var edad = 34
print("edad es una variable porque se sumara 1 cada año")
//8-
var numPasosHoy = 2_000
print("numPasosHoy es una variable porque ira variando a lo largo del dia")
//8-
let objPasos = 10_000
//print(objPasos.formatted(.number.locale(.init(identifier: "pt_BR"))))
print("objPasos es una constante porque sera el objetivo marcado")

var medFrecuenciaCardiaca = 50
print("medFrecuenciaCardiaca es una variable porque se modificara cada dia")
//8-
var haAlcanzadoObjetivoPasos: Bool

//7-

var primerDecimal: Double
var segundoDecimal: Double
var verdaderoOFalso: Bool = true
var cadenaTexto: String = "hola"
var entero: Int = 0

//primerDecimal = verdaderoOFalso
print("No compila por conflicto entre tipos de datos")
//primerDecimal = cadenaTexto
print("no compila por intentar asignar una cadena a un double")
//primerDecimal = entero
print("no compila por intentar asignar un int a un double")

//9-

var nombre9: String
//print(nombre9)
//no compila porque la variable no ha sido inicializada
nombre9 = "Carlos"
print(nombre9)

var distanciaViajada: Double = 0
distanciaViajada = 54.3
// al darle el valor de 0 swift entiende que es un int por eso despues a especificarle el tipo double ya si deja asignarle el valor 54.3
