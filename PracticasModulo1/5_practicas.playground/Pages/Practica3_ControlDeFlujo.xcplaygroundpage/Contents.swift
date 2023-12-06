import UIKit

//1-

print(9 == 9)
print(9 != 9)
print(47 > 90)
print(47 < 90)
print(4 <= 4)
print(4 >= 5)
print((47 > 90) && (47 < 90))
print((47 > 90) || (47 < 90))
print(!true)

//2-

var euros = 105

if euros == 0{
    print("Te has quedado sin dinero")
}else if euros < 100{
    print("tienes que seguir ahorrando")
} else{
    print("Todavia tienes dinero")
}

//3-

var pasos = 6000
let objetivo = 10000

if pasos < objetivo / 2 {
    print("Animo tu puedes!")
} else {
    print("Ya casi lo tienes")
}

if pasos == objetivo / 10{
    print("Ya tienes la 10ma parte")
} else if pasos == objetivo / 2 {
    print("Ya vas por la mitad")
} else if pasos > objetivo / 2 {
    print("has pasado la mitad")
}

//4-

let pizza: Bool = true
let pescado: Bool = true
let vegano: Bool = false

if pizza && pescado && vegano {
    print("todos pueden comer")
} else {
    print("Sigue buscando restaurante")
}


let estaLloviendo: Bool = true
let estaSoleado: Bool = true
let temperatura: Double = 23

if !estaLloviendo || (estaSoleado && temperatura < 25){
    print("Damos un paseo!")
}

//5-

let objetivoMinimoFC = 120
let objetivoMaximoFC = 150
let actualFC = 147

if actualFC < objetivoMinimoFC {
    print("Apreta mas")
} else if (objetivoMinimoFC < actualFC) && (actualFC < objetivoMaximoFC) {
    print("Sigue asi")
} else {
    print("Baja el ritmo")
}

//6-

let posicionLiga = 1

switch posicionLiga {
case 1: 
    print("Eres el primero!")

case 2:
    print("Eres el segundo!")

case 3:
    print("Eres el tercero")

default:
    print("Sigue participando")
}

switch posicionLiga {
case 1:
    print("Medalla de oro")

case 2:
    print("Medalla de plata")

case 3:
    print("Medalla de bronce")

default:
    print("No tiene medalla")
}

//7-

switch actualFC{
case 100...120:
    print("Estas en una zona muy baja de actividad. Esta zona favorece la recuperacion")
case 121...140:
    print("Estás en una zona ligera, la actividad en esta zona te ayuda a ganar resistencia y a quemar grasa")
case 141...160:
    print("Estás en la zona moderada, esta zona te ayuda a mejorar la resistencia aeróbica")
case 161...180:
    print("Estás en la zona dura, la actividad en esta zona incrementa la resistencia anaeróbica")
case 181...200:
    print("Estás en la zona máxima, la actividad en esta zona ayuda a mejorar la velocidad")
default:
    print("Baja el ritmo")
}

//8-

var number1: Int = 5
var number2: Int = 10
var largest: Int
/*
if number1 > number2 {
    largest = number1
} else {
    largest = number2
}
 */

number1 > number2 ? (largest = number1) : (largest = number2)

largest

//9-

/*
 if pasos < objetivo / 2 {
 print("Animo tu puedes!")
 } else {
 print("Ya casi lo tienes")
 }
 */

pasos < objetivo / 2 ? print("Animo tu puedes!") : print("Ya casi lo tienes")

