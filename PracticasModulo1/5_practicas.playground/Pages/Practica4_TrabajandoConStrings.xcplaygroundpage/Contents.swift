import UIKit

//1-

let nombre = "Matias"

let frase = "hasta la vista baby"

print(#"Mi frase favorita es "\#(frase)""#)

let cadenaVacia = ""

if cadenaVacia.isEmpty {
    print("Esta cadena esta vacia")
} else {
    print("Esta cadena NO esta vacia")
}

//2-

let ciudad = "Santa Coloma de Queralt"
let provincia = "Tarragona"
let casa = ciudad + ", " + provincia

print(casa)

var introduccion = "Yo vivo en "

introduccion += casa

print(introduccion)

nombre
let edad = 35

print("Me llamo \(nombre) y despues de mi cumpleaños, tendre \(edad + 1) años")

//3-

nombre
let apellido = "Alvarez"
let nombreCompleto = nombre + apellido

let recordAnterior = 5000
let recordNuevo = 7000

let felicitacion = "¡Felicidades, \(nombreCompleto)! Has batido tu récord anterior de \(recordAnterior) pasos andando \(recordNuevo) pasos en el día de ayer!"

print(felicitacion)

//4.1-

let nombreConMayus = "Matias Alvarez"
let nombreSinMayus = "matias alvarez"

if nombreConMayus == nombreSinMayus {
    print("\(nombreConMayus) y \(nombreSinMayus) son la misma cadena")
} else {
    print("\(nombreConMayus) y \(nombreSinMayus) no son la misma cadena")
}

//4.2-

if nombreConMayus.lowercased() == nombreSinMayus.lowercased() {
    print("\(nombreConMayus.lowercased()) y \(nombreSinMayus.lowercased()) son la misma cadena")
} else {
    print("\(nombreConMayus.lowercased()) y \(nombreSinMayus.lowercased()) no son la misma cadena")
}

//4.3-

let hijo = "Steve Jobs Jr."

if hijo.hasSuffix("Jr."){
    print("¡Tenemos un nombre de segunda generación!")
}

//4.4-

let textoABuscar = "en un lugar de la mancha"
let textoDondeBuscar = "En un lugar de la Mancha, de cuyo nombre no quiero acordarme"

if textoDondeBuscar.lowercased().contains(textoABuscar) {
    print("¡Lo encontre!")
}

//4.5-

print(nombreCompleto.count)

//5-

let nombreUsuario = "Roberto"
let contrasena = "AbCdEfG"

let nombreUsuarioIntroducido = "roberto"
let contrasenaIntroducida = "AbCdEfg"

if nombreUsuario.lowercased() == nombreUsuarioIntroducido.lowercased() && contrasena == contrasenaIntroducida {
    print("Acceso")
} else {
    print("Denegado")
}


