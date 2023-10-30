import Chica.*

class Emocion {
	const esAlegre
	method efectoEmocional(unaChica, unEvento)
	method niega(unEvento)
}

object alegria  inherits Emocion (esAlegre = true) {
	override method efectoEmocional(unaChica, unEvento){
		if (unaChica.estaFeliz()){
			unaChica.nuevoPensamientoCentral(unEvento)
		}
	}
	override method niega(unEvento){
		return !unEvento.emocionAsociada().esAlegre()
	}	
}

object tristeza inherits Emocion (esAlegre = false) {
	override method efectoEmocional(unaChica, unEvento){
		unaChica.nuevoPensamientoCentral(unEvento)
		unaChica.disminuirNivelDeFelicidad(0.1)
	}
	override method niega(unEvento){
		return unEvento.emocionAsociada().esAlegre()
	}
}

class EmocionSinEfecto inherits Emocion (esAlegre = false){
	override method efectoEmocional(unaChica, unEvento){}
	override method niega(unEvento){
		return false
	}
}

object disgusto inherits EmocionSinEfecto {}
object furia inherits EmocionSinEfecto {}
object temor inherits EmocionSinEfecto {}
