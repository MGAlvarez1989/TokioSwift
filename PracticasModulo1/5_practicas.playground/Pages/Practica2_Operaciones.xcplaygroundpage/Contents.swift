import UIKit

//1-

let altura = 10
let anchura = 20

let area = altura * anchura
let areaHabitacion = area / 2

print(areaHabitacion)

let perimetro = altura * 2 + anchura * 2

//ejercicio 1. Aritmetica Basica
//2-

let resultadoEnteroDivision = 10 / 3
print(resultadoEnteroDivision)

let double10: Double = 10
let double3: Double = 3
let resultadoDivision = double10 / double3
print(resultadoDivision)

//3-

let radio = 5.0

let diametro = 2 * radio
let longitud = 2 * radio * Double.pi

print(diametro)
print(longitud)

//ejercicio 2. APP Deporte

let frecuenciaCardiaca1 = 80
let frecuenciaCardiaca2 = 100
let frecuenciaCardiaca3 = 91

let sumaFC = frecuenciaCardiaca1 + frecuenciaCardiaca2 + frecuenciaCardiaca3

let mediaFC = sumaFC / 3

print(mediaFC)

let frecuenciaCardiaca1D: Double = 80
let frecuenciaCardiaca2D: Double = 100
let frecuenciaCardiaca3D: Double = 91

let sumaFCD = frecuenciaCardiaca1D + frecuenciaCardiaca2D + frecuenciaCardiaca3D

let mediaFCD = sumaFCD / 3.0

print(mediaFCD)

print("el resultado es distinto porque en el primer caso al ser un int estavamos omitiendo la parte decimal y en cambio con el double si que la vemos")

let pasos: Double = 3467
let objetivo: Double = 10000

let porcentajeDeObjetivo = (pasos * 100) / objetivo

// ejercicio 3. Calculos Compuestos
//1-

var numero = 10
print(numero)
numero += 5
print(numero)
numero *= 2
print(numero)

//2-

var bancoTokio = 0
print(bancoTokio)
bancoTokio += 10
print(bancoTokio)
bancoTokio += 20
print(bancoTokio)
bancoTokio /= 2
print(bancoTokio)
bancoTokio *= 3
print(bancoTokio)
bancoTokio -= 3
print(bancoTokio)

// ejercicio 4. Distancia Caminada

var pasosCaminados = 0

pasosCaminados += 1

var distancia: Double = 50
distancia /= 3.28084

// ejercicio 5. Constantes

let x: Int = 10
let y: Double = 3.2
let multiplicandoComoEnteros = x * Int(y)
print(multiplicandoComoEnteros)
let multiplicandoComoDobles = Double(x) * y
print(multiplicandoComoDobles)

print(#"No da el mismo resultado porque en el primer caso solo se tiene en cuenta la parte entera del numero "y" en la segunda operacion si"#)

// ejercicio 6. APP Deporte - Continuacion

let pasosInt: Int = Int(pasos)
let objetivoInt: Int = Int(objetivo)

let porcentajeDeObjetivo2: Double = Double((pasosInt * 100) / objetivoInt)
//constante del ejercicio anterior
porcentajeDeObjetivo
