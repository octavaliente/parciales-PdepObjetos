import Elemento.*
import Adulto.*
import Miembro.*

class Ninio inherits Miembro{
	const elementos = #{} //disfraces
	const actitud
	var caramelos
	
	override method caramelos(){
		return caramelos
	}
	
	override method capacidadDeAsustar(){
		return self.sustoElementos() * actitud
	}
	
	method sustoElementos(){
		return elementos.sum{unDisfraz => unDisfraz.capacidadSusto()}
	}
	
	override method asustarAdulto(unAdulto){
		unAdulto.recibirSusto(self)
	}
	
	method tieneMasDeCaramelos(unaCantidad){
		return caramelos > unaCantidad
	}
	
	override method recibirCaramelos(unosCaramelos){
		caramelos += unosCaramelos
	}
	method comer(unosCaramelos){
		if(caramelos <= unosCaramelos){
			caramelos -= unosCaramelos
		} else {
			throw new NoAlcanzanLosCaramelosException(message="No tiene caramelos suficientes")
		}
	}
}

class NoAlcanzanLosCaramelosException inherits Exception {}
