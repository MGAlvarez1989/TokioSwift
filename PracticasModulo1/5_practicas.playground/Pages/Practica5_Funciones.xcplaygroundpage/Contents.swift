import UIKit
import Foundation

//1.1-

func presentacion(){
    print("Hola, mi nombre es Matias y tengo 35 años")
}

presentacion()

//1.2-

func randomNumber(){
    let numeroAleatorio = arc4random_uniform(UInt32(5))
    
    switch numeroAleatorio{
    case 1:
        print("sal corriendo")
    case 2:
        print("no puedes volar")
    case 3:
        print("ya me gustaria a mi")
    case 4:
        print("dudas, problemas, dolores?")
    default:
        print("Default")
    }
}

randomNumber()
randomNumber()
randomNumber()
randomNumber()

//2.1-

var pasos = 0

func incrementaPasos(){
    pasos += 1
    print(pasos)
}

incrementaPasos()
incrementaPasos()
incrementaPasos()

//2.2-

let objetivo = 10000

func actualizarEstado(){
    if pasos < objetivo * 10 / 100{
        print("Es un buen comienzo")
    } else if pasos < objetivo * 50 / 100 {
        print("¡Ya casi estás a medio camino!")
    } else if pasos < objetivo * 90 / 100 {
        print("¡Ya has pasado la mitad!")
    } else if pasos < objetivo {
        print("Ya casi lo tienes")
    } else if pasos < objetivo {
        print("¡Has conseguido tu objetivo!")
    }
}

actualizarEstado()
pasos = 4000
actualizarEstado()
pasos = 6000
actualizarEstado()
pasos = 9999
actualizarEstado()
pasos = 11000
actualizarEstado()

//3.1-

func presentacion2 (nombre: String, edad: String, casa: String){
    print("\(nombre), de \(edad) años, vive en \(casa)")
}

presentacion2(nombre: "Matias", edad: "35", casa: "la Luna")

//3.2-

func casiSuma (_ numero1: Int, numero2: Int){
    print(numero1 + numero2 - 2)
}

casiSuma(10, numero2: 5)

//3.4-

func multiplicar (_ numero1: Double, por numero2: Double){
    print(numero1 * numero2)
}

multiplicar(3, por: 5)

//3.5-

func actualizarEstado1(pasos: Int, objetivo: Int){
    if pasos < objetivo * 10 / 100{
        print("Es un buen comienzo")
    } else if pasos < objetivo * 50 / 100 {
        print("¡Ya casi estás a medio camino!")
    } else if pasos < objetivo * 90 / 100 {
        print("¡Ya has pasado la mitad!")
    } else if pasos < objetivo {
        print("Ya casi lo tienes")
    } else if pasos < objetivo {
        print("¡Has conseguido tu objetivo!")
    }
}

actualizarEstado1(pasos: 1, objetivo: 10000)
actualizarEstado1(pasos: 4000, objetivo: 10000)
actualizarEstado1(pasos: 6000, objetivo: 10000)
actualizarEstado1(pasos: 9999, objetivo: 10000)
actualizarEstado1(pasos: 11000, objetivo: 10000)

//4.2-

func compruebaRitmo (distanciaActual: Double, distanciaTotal: Double, ritmoActual: Double, ritmoObjetivo: Double){
    var ritmo = ritmoActual / (distanciaActual / distanciaTotal)
    
    if ritmo < ritmoObjetivo{
        print("¡Mantente así!")
    } else {
        print("Tienes que apretar un poco más fuerte")
    }
}

//5.1-

func saludo (nombre: String) -> String {
    return "Hola \(nombre) buen dia!"
}

print(saludo(nombre: "Rigoberto"))

//5.2-

func mult (num1: Int, num2: Int) -> Int {
    return num1 * num2 + 2
}

mult(num1: 2, num2: 10)

//6.1-

func calcularRitmo (distanciaActual: Double , distanciaTotal: Double, tiempoActual: Double) -> Double {
    return tiempoActual / (distanciaActual / distanciaTotal)
}

print(calcularRitmo(distanciaActual: 100, distanciaTotal: 1000, tiempoActual: 2))

//6.2-

func compruebaRitmo2 (ritmoObjetivo: Double) -> String {
    let ritmo = calcularRitmo(distanciaActual: 100, distanciaTotal: 1000, tiempoActual: 2)
    
    if ritmo < ritmoObjetivo{
        return "¡Mantente así!"
    } else {
        return "Tienes que apretar un poco más fuerte"
    }
}

print(compruebaRitmo2(ritmoObjetivo: 10))
