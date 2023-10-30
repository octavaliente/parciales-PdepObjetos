import Ninio.*

class Adulto {
	method recibirSusto(unNinio)
	method darCaramelos()
}

class AdultoCopado inherits Adulto{
	var tolerancia
	const niniosQueLoAsustaron
	
	method calculoTolerancia(){
		tolerancia = 10 * self.niniosConCaramelos()
	}
	method niniosConCaramelos(){
		return niniosQueLoAsustaron.filter{unNinio => unNinio.tieneMasDeCaramelos(15)}.size()
	}
	method nuevoAsustador(unNinio){
		niniosQueLoAsustaron.add(unNinio)
	}
}

class AdultoComun inherits AdultoCopado {
	
	override method recibirSusto(unNinio){
		self.nuevoAsustador(unNinio)
		if(self.seAsusta(unNinio)){
			self.calculoTolerancia()
			unNinio.recibirCaramelos(self.darCaramelos())
		}
	}
	override method darCaramelos(){
		return tolerancia / 2
	}
	method seAsusta(unNinio){
		return tolerancia < unNinio.capacidadDeSusto()
	}
	
}

class Abuelo inherits AdultoCopado {
	override method recibirSusto(unNinio){
		self.nuevoAsustador(unNinio)
		self.calculoTolerancia()
		unNinio.recibirCaramelos(self.darCaramelos())
	}
	override method darCaramelos(){
		return tolerancia / 4
	}
}

object adultoNecio inherits Adulto {
	override method recibirSusto(unNinio){}
	override method darCaramelos(){}
}
