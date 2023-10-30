import Expedicion.*
import Casta.*

class Vikingo {
	const casta
	
	method puedeIr(unaExpedicion){
		return self.esProductivo() && casta.permiteExpedicion(self)
	}
	method esProductivo()
	method tieneArmas()
}

class Soldado inherits Vikingo {
	var vidasCobradas
	var armas
	
	override method esProductivo(){
		return vidasCobradas > 20 && self.tieneArmas()
	}
	override method tieneArmas(){
		return armas > 0
	}
}

class Granjero inherits Vikingo {
	const hijos
	const hectareas

	override method esProductivo(){
		return hectareas > hijos * 2
	}
	override method tieneArmas(){
		return false
	}
}