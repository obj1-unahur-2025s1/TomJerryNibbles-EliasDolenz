object tom {
    var energia = 50
    method energia() = energia 
    method comer(raton) {
        energia += 12 + raton.peso()
    }
    method correr(distancia) {
        energia -= distancia/2
    } 
    method velocidadMaxima() = 5 + energia/10
    method puedeCazar(distancia) = energia >=  distancia/2
    method cazar(distancia,raton) {
      if (self.puedeCazar(distancia)){ 
        self.correr(distancia)
        self.comer(raton)
      } // mas de un mensaje es probable que sea if
    }
}

object jerry {
  var edad = 2
  method peso() = edad * 20
  method cumplirAnios() {
    edad += 1
  }
}

object nibbles {
  method peso() = 35
}

object perez {
  var cantidadDeDientesRecolectados = 10 
  var fondosDisponibles = 10000
  method peso() = 55  + cantidadDeDientesRecolectados*0.5
  method canjearDiente(){
    cantidadDeDientesRecolectados += 1
    fondosDisponibles -= 1000
  }
}




