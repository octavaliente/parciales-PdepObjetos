class Estado {
	method reservarPara(unaOperacion, unCliente)
	
	method concretarPara(unaOperacion, unCliente){
		self.validarCierrePara(unCliente)
		unaOperacion.estado(cerrada)
	}
	
	method validarCierrePara(unCliente){}
}

object disponible inherits Estado {
	override method reservarPara(unaOperacion, unCliente){
		unaOperacion.estado(new Reservada(cliente = unCliente))
	}
}

class Reservada inherits Estado {
	var cliente 
	method cliente(unCliente){
		cliente = unCliente
	}
	override method reservarPara(unaOperacion, unCliente){
		throw new NoSePudoReservarException(message = "No puede volver a reservarse")
	}
	override method validarCierrePara(unCliente){
		if(cliente != unCliente){
			throw new NoSePudoConcretarException(message = "La operacion fue reservada por otro cliente")
		}
	}
}

class NoSePudoReservarException inherits Exception{}
class NoSePudoConcretarException inherits Exception{}

object cerrada inherits Estado {
	override method reservarPara(unaOperacion, unCliente){
		throw new NoSePudoReservarException(message = "No puede reservarse una operacion cerrada")
	}
	override method validarCierrePara(unCliente){
			throw new NoSePudoConcretarException(message = "La operacion ya fue cerrada")
		}
	}