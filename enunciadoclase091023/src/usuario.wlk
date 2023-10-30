import suscripcion.*

class Usuario {
	var property suscripcion
	var saldo
	var property humor
	
	method saldo(){
		return saldo
	}
	
	method pagarSuscripcion(){
		saldo -= suscripcion.precio()
	}
	
	method jugar(unJuego, unTiempo){
		if (suscripcion.puedeJugar(unJuego)){
			unJuego.jugar(self, unTiempo)
		}
	}
}