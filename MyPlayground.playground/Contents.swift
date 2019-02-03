import UIKit

enum Velocidades : Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades;
    
    init() {
        velocidad = Velocidades.Apagado;
        
        
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String) {
        var tupla = (0,"");
        
        if self.velocidad == Velocidades.Apagado {
            self.velocidad = Velocidades.VelocidadBaja
            tupla = (Velocidades.VelocidadBaja.rawValue,"Velocidad Baja")
        }
        else if self.velocidad == Velocidades.VelocidadBaja {
            self.velocidad = Velocidades.VelocidadMedia
            tupla = (Velocidades.VelocidadMedia.rawValue,"Velocidad Media")
        }
        else if self.velocidad == Velocidades.VelocidadMedia {
            self.velocidad = Velocidades.VelocidadAlta
            tupla = (Velocidades.VelocidadAlta.rawValue,"Velocidad Alta")
        }
        else if self.velocidad == Velocidades.VelocidadAlta {
            self.velocidad = Velocidades.VelocidadMedia
            tupla = (Velocidades.VelocidadMedia.rawValue,"Velocidad Media")
        }
        
        return tupla;
    }
    
    
}

var auto = Auto()

var i = 0;
while (i < 20) {
    
    print(auto.cambioDeVelocidad());
    
    i+=1
}

/*
 
 
 Pruebas de la clase:
 
 - En el mismo playground prueba crea una instancia de la clase Auto, llamada auto.
 
 - Itera 20 veces usando un for, llama a la función cambioDeVelocidad e imprime los valores de la tupla en la consola.
 
 - Una salida válida con cinco iteraciones es:
 
 0 , Apagado
 
 20, Velocidad baja
 
 50, Velocidad media
 
 120, Velocidad alta
 
 50, Velocidad media
 
 120, Velocidad alta
 
 50, Velocidad media
 
 120, Velocidad alta
 
 50, Velocidad media
 
 */
