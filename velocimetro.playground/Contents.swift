// Curso Swift - Tarea 2
// Oscar Pauly Calvo

import UIKit


enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial         // Inicializa enumeración
    }
}


class Auto {
    var velocidad : Velocidades
    var mensaje = ""
    
    init(){
        self.velocidad = Velocidades.Apagado            // Asigna Apagado a velocidad
        self.mensaje = "Apagado"                        // Mensaje inicial
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena : String){
        switch velocidad {
        case .VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            mensaje = "Velocidad media"
        case .VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            mensaje = "Velocidad alta"
        case .VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
            mensaje = "Velocidad media"
        default:                                            // case .Apagado
            velocidad = Velocidades.VelocidadBaja
            mensaje = "Velocidad baja"
        }
    return (velocidad.rawValue, mensaje)                // Tupla de retorno
    }
}

var auto = Auto()

print(auto.velocidad.rawValue,"->",auto.mensaje)             // Muestra estado inicial

for _ in 0...19 {                                           // Llama 20 veces la función
    var prueba = auto.cambioDeVelocidad()
    print(prueba.actual,"->",prueba.velocidadEnCadena)
}



