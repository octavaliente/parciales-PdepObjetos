import TipoArbol.*
import Regalo.*
import Adorno.*

class ArbolNavidenio{
	const tipoArbol
	var regalos = []
	const adornos = []
	const tarjetas = []
	
	method capacidadTotal(){
		return tipoArbol.capacidad()
	}
	
	method capacidadOcupada(){
		return regalos.size()
	}
	
	method capacidadDisponible(){
		return self.capacidadTotal() - self.capacidadOcupada()
	}
	
	method agregarRegalo(unRegalo){
		if(self.tieneCapacidad()){
			regalos.add(unRegalo)
		} else {
			throw new ArbolLLenoException(message = "no tiene mas capacidad")
		}
	}
	
	method tieneCapacidad(){
		return self.capacidadDisponible() > 0
	}
	
	method beneficiarios(){
		return self.regalosTotales().map{unRegalo => unRegalo.destinatario()}
	}
	
	method costoRegalos(){
		return self.regalosTotales().sum{unRegalo => unRegalo.precio()}
	}
	
	method regalosTotales(){
		return regalos + tarjetas
	}
	
	method importancia(){
		return adornos.sum{unAdorno => unAdorno.importancia()}
	}
	
	method precioPromedioDeRegalo(){
		return self.costoRegalos() / self.cantidadRegalosTotales()
	}
	
	method cantidadRegalosTotales(){
		return self.regalosTotales().size()
	}
	
	method regalosTeQuierenMucho(){
		return self.regalosTotales().filter{unRegalo => unRegalo.esTeQuierenMucho(self.precioPromedioDeRegalo())}
	}
	
	method esArbolPotentoso(){
		return self.regalosTeQuierenMucho().size() > 5 || tarjetas.any{unaTarjeta => unaTarjeta.esCara()}
	}
	
	method adornoMasPesado(){
		return adornos.max{unAdorno => unAdorno.peso()}
	}
	
}

class ArbolLLenoException inherits Exception {}