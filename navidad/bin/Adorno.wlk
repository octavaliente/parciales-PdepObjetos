class Adorno {
	const pesoBase
	const coeficienteDeSuperioridad
	
	method importancia(){
		return pesoBase * coeficienteDeSuperioridad
	}
	method peso(){
		return pesoBase
	}
}

class Luces inherits Adorno {
	const cantidadDeLamparas
	
	override method importancia(){
		return super() * cantidadDeLamparas
	}
}

class FiguraElaborada inherits Adorno {
	const volumen
	override method importancia (){
		return super() + volumen
	}
}

class Guirnalda inherits Adorno {
	const aniosDeUso
	
	override method peso(){
		return super() - 100 * aniosDeUso
	}
}