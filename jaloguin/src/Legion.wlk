import Miembro.*

class Legion inherits Miembro {
	const miembros = #{}
	
	override method caramelos(){
		return self.caramelosTotales()
	}
	
	override method capacidadDeAsustar(){
		return miembros.sum{unMiembro => unMiembro.capacidadDeAsustar()}
	}
	override method recibirCaramelos(unosCaramelos){
		self.lider().recibirCaramelos(unosCaramelos)
	}
	override method asustarAdulto(unAdulto){
		miembros.forEach{unMiembro => unAdulto.recibirSusto(unMiembro)}
	}
	method caramelosTotales(){
		return miembros.sum{unMiembro => unMiembro.caramelos()}
	}
	method lider(){
		return miembros.max{unMiembro => unMiembro.capacidadDeAsustar()}
	}
}
