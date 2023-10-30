import usuario.*
import juego.*
import suscripcion.*

object gameflix {
	const libreriaJuegos = #{}
	
	method filtrarJuegos(unaCategoria){
		return libreriaJuegos.filter({unJuego => unJuego.categoria() == unaCategoria})
	}
	method buscarJuego(nombreJuego){
		return libreriaJuegos.find({unJuego => unJuego.nombre()==nombreJuego})
	}
	method recomendarJuego(){
		return libreriaJuegos.anyOne()
	}
	method cobrarSuscripcion(unUsuario){
		if(unUsuario.suscripcion().precio() <= unUsuario.saldo()){
			unUsuario.pagarSuscripcion()
		} else {
			unUsuario.suscripcion(prueba)
		}
	}
	
}
