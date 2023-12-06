import UIKit

// ejercicio 1

class NaveEspacial {
    var nombre: String
    var salud: Int
    var posicion: Int
    
    init(nombre: String) {
        self.nombre = nombre
        self.salud = 100
        self.posicion = 0
    }
    
    func mueveIzquierda() {
        posicion -= 1
    }
    
    func mueveDerecha() {
        posicion += 1
    }
    
    func impacto() {
        salud -= 5
        if salud <= 0 {
            print("Lo siento, te han alcanzado demasiadas veces, ¿quieres volver a jugar?")
        }
    }
}

var falcon = NaveEspacial(nombre: "Falcon")

print("Posicion del Falcon: \(falcon.posicion)")
falcon.mueveIzquierda()
print("Posicion del Falcon: \(falcon.posicion)")
falcon.mueveIzquierda()
print("Posicion del Falcon: \(falcon.posicion)")
falcon.mueveDerecha()
print("Posicion del Falcon: \(falcon.posicion)")

print("Salud del Falcon: \(falcon.salud)")
falcon.impacto()
print("Salud del Falcon: \(falcon.salud)")

// ejercicio 2

class NaveDeGuerra: NaveEspacial {
    var arma: String
    var municionRestante: Int
    
    init(arma: String, municionRestante: Int, nombre: String) {
        self.arma = arma
        self.municionRestante = municionRestante
        super.init(nombre: nombre)
    }
    func disparar (){
        if municionRestante > 0 {
            municionRestante -= 1
        } else {
            print("Ya no te queda municion")
        }
    }
}

let destructor = NaveDeGuerra(arma: "Laser", municionRestante: 5, nombre: "Destructor")
destructor.municionRestante = 10
print("Posicion del Destructor: \(destructor.posicion)")
destructor.mueveDerecha()
print("Posicion del Destructor: \(destructor.posicion)")

//falcon.arma
print("El objeto falcon no tiene la funcion arma poruqe esta funcion es de la clase NaveDeGuerra y el objeto es de NaveEspacial")

print("Destructor, municion restante: \(destructor.municionRestante)")
destructor.disparar()
print("Destructor, municion restante: \(destructor.municionRestante)")
destructor.disparar()
print("Destructor, municion restante: \(destructor.municionRestante)")
destructor.disparar()
print("Destructor, municion restante: \(destructor.municionRestante)")
destructor.disparar()
print("Destructor, municion restante: \(destructor.municionRestante)")
destructor.disparar()
print("Destructor, municion restante: \(destructor.municionRestante)")

// ejercicio 3

class NaveConEscudo: NaveDeGuerra {
    var fuerzaDeEscudo: Int
    
    init(fuerzaDeEscudo: Int, arma: String, municionrestante: Int, nombre: String) {
        self.fuerzaDeEscudo = fuerzaDeEscudo
        super.init(arma: arma, municionRestante: municionrestante, nombre: nombre)
    }
    
    override func impacto() {
        if fuerzaDeEscudo > 0 {
            fuerzaDeEscudo -= 5
        } else {
            super.impacto()
        }
    }
}

let defensor = NaveConEscudo(fuerzaDeEscudo: 25, arma: "Cañon", municionrestante: 5, nombre: "Defensor")
defensor.mueveDerecha()
print("Posicion de Defensor : \(defensor.posicion)")
defensor.disparar()
print("Municion restante Defensor: \(defensor.municionRestante)")

defensor.impacto()
print("Salud Defensor: \(defensor.salud), Escudo Defensor: \(defensor.fuerzaDeEscudo)")
defensor.impacto()
print("Salud Defensor: \(defensor.salud), Escudo Defensor: \(defensor.fuerzaDeEscudo)")
defensor.impacto()
print("Salud Defensor: \(defensor.salud), Escudo Defensor: \(defensor.fuerzaDeEscudo)")
defensor.impacto()
print("Salud Defensor: \(defensor.salud), Escudo Defensor: \(defensor.fuerzaDeEscudo)")
defensor.impacto()
print("Salud Defensor: \(defensor.salud), Escudo Defensor: \(defensor.fuerzaDeEscudo)")
defensor.impacto()
print("Salud Defensor: \(defensor.salud), Escudo Defensor: \(defensor.fuerzaDeEscudo)")
defensor.impacto()
print("Salud Defensor: \(defensor.salud), Escudo Defensor: \(defensor.fuerzaDeEscudo)")
defensor.impacto()
print("Salud Defensor: \(defensor.salud), Escudo Defensor: \(defensor.fuerzaDeEscudo)")

var mismaNave = falcon
mismaNave.posicion
falcon.posicion
mismaNave.mueveIzquierda()
mismaNave.posicion
falcon.posicion
print("Las dos cambias de posicion porque al ser un reference type estos dos objetos hacen referencia a la misma posicion de memoria. Si fueran struct al ser un value type son distintas posiciones de memoria poruqe son una copia del original.")
