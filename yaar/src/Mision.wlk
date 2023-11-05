import Pirata.*

class Mision{
	method puedeRealizarPirata(unPirata)
	method puedeRealizarBarco(unBarco){
		return unBarco.tieneSuficienteTripulacion(90)
	}
}

class BusquedaDelTesoro inherits Mision{
	override method puedeRealizarPirata(unPirata){
		return unPirata.tieneAlgunoDe(["brujula","mapa","grogXD"]) && unPirata.tieneMonedas(5)
	}
	override method puedeRealizarBarco(unBarco){
		return super(unBarco) && unBarco.tripulanteTiene(["llaveDelCofre"])
	}
}

class Leyenda inherits Mision {
	const itemObligatorio
	
	override method puedeRealizarPirata(unPirata){
		return unPirata.cantidadItems(10) && unPirata.tieneAlgunoDe([itemObligatorio])
	}
}

class Saqueo inherits Mision {
	const minimoMonedas 
	const victima
	
	override method puedeRealizarPirata(unPirata){
		return unPirata.tieneMonedas(minimoMonedas) && unPirata.seAnimaASaquear(victima)
	}
	
	override method puedeRealizarBarco(unBarco){
		return super(unBarco) && victima.esVulnerable(unBarco)
	}
}