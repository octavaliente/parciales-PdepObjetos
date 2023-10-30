import Chica.*

class ProcesoMental {
	method efectuarSobre(unaChica)
}

object asentamiento inherits ProcesoMental{
	override method efectuarSobre(unaChica){
		unaChica.asentarRecuerdosDiarios()
	}
}

class AsentamientoSelectivo inherits ProcesoMental {
	const palabraClave
	override method efectuarSobre(unaChica){
		unaChica.asentarRecuerdosClaves(palabraClave)
	}
}