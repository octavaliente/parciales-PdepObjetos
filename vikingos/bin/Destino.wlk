import Expedicion.*

class Capital{
	const factorDeRiqueza
	var defensoresDerrotados
	
	method valeLaPena(unaExpedicion){
		return self.botinSuficiente(unaExpedicion) 
	}
	
	method botinSuficiente(unaExpedicion){
		const botin = self.botin(unaExpedicion)
		return botin >= unaExpedicion.cantidadVikingos() * 3
	}
	
	method botin(unaExpedicion){
		return defensoresDerrotados * factorDeRiqueza
	}
	
	method invadir(){}
}

class Aldea {
	var crucifijos
	const sedDeSaqueos
	
	method valeLaPena(unaExpedicion){
		return crucifijos >= sedDeSaqueos
	}
	
	method invadir(){}
}

class AldeaIndefensa inherits Aldea {}

class AldeaDefendida inherits Aldea {
	const minimoVikingos
	
	override method valeLaPena(unaExpedicion){
		return super(unaExpedicion) && unaExpedicion.cantidadVikingos() >= minimoVikingos 
	}
}