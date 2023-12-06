import UIKit

//1.1-

struct GPS {
    var latitud: Double = 0.0
    var longitud: Double = 0.0
}

//1.2-

var unLugar = GPS()

print("latitud: \(unLugar.latitud), longitud: \(unLugar.longitud)")

//1.3-

unLugar.latitud = 51.514004
unLugar.longitud = 0.125226

print("latitud: \(unLugar.latitud), longitud: \(unLugar.longitud)")

//1.4-

struct Libro{
    var titulo = ""
    var autor = ""
    var paginas = 0
    var precio = 0.0
}

//1.5-

var libroFavorito = Libro()

print(libroFavorito)

libroFavorito.titulo = "Charlie y la fabrica de chocolates"
libroFavorito.autor = "Roald dahl"
libroFavorito.paginas = 200
libroFavorito.precio = 5.20

print(libroFavorito)

// ejercicio 2-

struct SesionRunning {
    var distancia = 0.0
    var tiempo = 0.0
    var elevacion = 0.0
}

var primeraCarrera = SesionRunning()

print(primeraCarrera)

primeraCarrera = (SesionRunning(distancia: 2396, tiempo: 15.3, elevacion: 94))

print("Has corrido un total de \(primeraCarrera.distancia) metros en \(primeraCarrera.tiempo) minutos con \(primeraCarrera.elevacion) metros de altitud acumulada")

// ejercicio 3
//3.1-


struct GPS1 {
    var latitud: Double
    var longitud: Double
}

var algunLugar = GPS1(latitud: 51.514004, longitud: 0.125226)

print(algunLugar)

//3.2-

struct Libro1{
    var titulo: String
    var autor: String
    var paginas: Int
    var precio: Double
}

var libroFavorito1 = Libro1(titulo: "Charlie y la fabrica de chocolates", autor: "Roald dahl", paginas: 200, precio: 5.20)

print(libroFavorito1)

//3.3-

struct Altura{
    var alturaCentimetros: Double
    var alturaPulgadas: Double

    init(alturaCentimetros: Double) {
        self.alturaCentimetros = alturaCentimetros
        self.alturaPulgadas = alturaCentimetros / 2.54
    }
    
    init(alturaPulgadas: Double) {
        self.alturaPulgadas = alturaPulgadas
        self.alturaCentimetros = alturaPulgadas * 2.54
    }
}

var unaAltura = Altura(alturaPulgadas: 65)

print(unaAltura)

var otraAltura = Altura(alturaCentimetros: 174)

print(otraAltura)

// ejercicio 4
//4.1-

struct Usuario {
    var nombre: String
    var edad: Int
    var altura: Double
    var peso: Double
    var nivelActividad: Int
}

var matias = Usuario(nombre: "Matias", edad: 35, altura: 1.74, peso: 70, nivelActividad: 4)

print(matias)

//4.2

struct Distancia {
    var metros: Double
    var pies: Double
    
    init(metros: Double) {
        self.metros = metros
        self.pies = metros * 3.28084
    }
    
    init(pies: Double) {
        self.pies = pies
        self.metros = pies / 3.28084
    }
}

var milla = Distancia(metros: 1600)

print("Milla: \(milla)")

var kilometro = Distancia(pies: 5249.344)

print("Kilometro: \(kilometro)")

// ejercicio 5
//5.1

struct Libro2{
    var titulo: String
    var autor: String
    var paginas: Int
    var precio: Double
    
    func descripcion() {
        print(self)
    }
}

var libroFavorito2 = Libro2(titulo: "Charlie y la fabrica de chocolates", autor: "Roald dahl", paginas: 200, precio: 5.20)

libroFavorito2.descripcion()

//5.2-

struct Articulo {
    var mensaje: String
    var meGustas: Int
    var numeroDeComentarios: Int
    
    mutating func meGusta () {
        self.meGustas += 1
    }
}

var miArticulo = Articulo(mensaje: "holi", meGustas: 0, numeroDeComentarios: 0)

print(miArticulo)

miArticulo.meGusta()

print(miArticulo)

// ejercicio 6

struct SesionRunning1 {
    var distancia: Double
    var tiempo: Double
    var altura: Double
    
    func postSesionRuning() {
        print(self)
    }
}

var miSesionRunning = SesionRunning1(distancia: 32, tiempo: 3.5, altura: 100)

miSesionRunning.postSesionRuning()

struct Pasos {
    var pasos: Int
    var objetivo: Int
    mutating func daPaso() {
        self.pasos += 1
    }
}

var pasito = Pasos(pasos: 0, objetivo: 10000)

print(pasito)

pasito.daPaso()

print(pasito)

// ejercicio 7
//7.1-

struct Rectangulo {
    var anchura: Int
    var altura: Int
    var area: Int

    init (anchura: Int, altura: Int){
        self.anchura = anchura
        self.altura = altura
        self.area = anchura * altura
    }
}

var miRectangulo = Rectangulo(anchura: 2, altura: 5)

print(miRectangulo)

//7.2-

struct Altura1 {
    var alturaEnPulgadas: Double {
        didSet{
            if oldValue != alturaEnPulgadas {
                alturaEnCentimetros = self.alturaEnPulgadas * 2.54
            }
        }
    }
    var alturaEnCentimetros: Double {
        didSet {
            if oldValue != alturaEnCentimetros {
                alturaEnPulgadas = self.alturaEnCentimetros / 2.54
            }
        }
    }
    
    init (alturaEnPulgadas: Double){
        self.alturaEnPulgadas = alturaEnPulgadas
        self.alturaEnCentimetros = alturaEnPulgadas * 2.54
    }
    
    init (alturaEnCentimetros: Double){
        self.alturaEnCentimetros = alturaEnCentimetros
        self.alturaEnPulgadas = alturaEnCentimetros / 2.54
    }
}

var miAltura = Altura1(alturaEnCentimetros: 150)
print(miAltura)
miAltura.alturaEnCentimetros = 200
print(miAltura)
miAltura.alturaEnPulgadas = 80
print(miAltura)
miAltura.alturaEnPulgadas = 1
print(miAltura)

// ejercicio 8
//8.1-

struct SesionRunning2 {
    var distancia: Double
    var tiempo: Double
    var altura: Double
    var tiempoMedioMilla: Double {
        get {
            return (distancia / 1600) / tiempo
        }
    }
}

var miSesion = SesionRunning2(distancia: 4000, tiempo: 60, altura: 100)
print(miSesion, miSesion.tiempoMedioMilla)

//8.2-

struct Pasos1 {
    var pasos: Int{
        willSet {
            if newValue == objetivo {
                print("Felicitaciones, has alcanzado tu objetivo!")
            }
        }
    }
    var objetivo: Int
    mutating func daPaso(){
        pasos += 1
    }
}

var cumplirObjetivo = Pasos1(pasos: 999, objetivo: 1000)
print(cumplirObjetivo)
cumplirObjetivo.daPaso()
print(cumplirObjetivo)

// ejercicio 9

struct RunningWorkout {
    var distance: Double
    var time: Double
    var elevation: Double
    var metroEnPies: Double{
        get{
            return distance * 3.28084
        }
    }
    var millaEnMetros: Double {
        get {
            return distance / 1600.0
        }
    }
    
    static func tiempoPorKmPara (distancia: Double, tiempo: Double){
        print("Tienes que ir a \(distancia / tiempo) Km/min")
    }
}

RunningWorkout.tiempoPorKmPara(distancia: 100, tiempo: 50)

var mario = RunningWorkout(distance: 1000, time: 60, elevation: 100)

print(mario)
print("Mario recorrio \(mario.distance) metros, \(mario.metroEnPies) pies, \(mario.millaEnMetros) millas")
