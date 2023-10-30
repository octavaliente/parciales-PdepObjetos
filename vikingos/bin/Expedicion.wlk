import Vikingo.*
import Destino.*

class Expedicion {
	var participantes = #{}
	const destinos = []
	var botinRecaudado
	
	method agregarVikingo(unVikingo) {
		if (unVikingo.puedeIr(self)){
			participantes.add(unVikingo)	
		} else {
			throw new NoPuedeIrException(message = "No puede participar de la expedicion")
		}
	}
	
	method valeLaPena(){
		return destinos.all{unDestino => unDestino.valeLaPena(self)}
	}
	
	method cantidadVikingos(){
		return participantes.size()
	}
	
	method realizarInvasiones(){
		destinos.forEach{unDestino => unDestino.invadir(participantes)}
		self.repartirBotin()
	}
	
	method recaudarBotin(unBotin){
		botinRecaudado += unBotin
	}
	
	method repartirBotin(){
		const botinIndivual = botinRecaudado / self.cantidadVikingos()
		participantes.forEach{unVikingo => unVikingo.recibirBotin(botinIndivual)}
	}
	
}

class NoPuedeIrException inherits Exception {}