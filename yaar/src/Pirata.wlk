import Mision.*
import Victima.*
import BarcoPirata.*

class Pirata{
	const items = []
	var nivelDeEbriedad
	var cantidadDinero
	const invitadoPor 
	
	method invitadoPor(){
		return invitadoPor
	}
	
	method nivelDeEbriedad(){
		return nivelDeEbriedad
	}
	method items(){
		return items
	}
	method cantidadDinero(){
		return cantidadDinero
	}
	method esUtil(unaMision){
		return unaMision.puedeRealizarPirata(self)
	}
	
	method tieneAlgunoDe(listaItems){
		return items.any{unItem => listaItems.contains(unItem)}
	}
	method cantidadItems(unaCantidad){
		return items.size() > unaCantidad
	}
	method tieneMonedas(unaCantidad){
		return cantidadDinero < unaCantidad
	}
	
	method seAnimaASaquear(unaVictima){
		return unaVictima.esSaqueadaPorPirata(self)
	}
	
	method pasadoDeGrogXD(){
		return nivelDeEbriedad > 90
	}
	
	method ebrio(){
		return nivelDeEbriedad > 50
	}
	method beberGrogXD(){
		items.add("grogXD")
		nivelDeEbriedad += 5
		cantidadDinero -= 1
	}
}

class EspiaDeLaCorona inherits Pirata{
	override method pasadoDeGrogXD(){
		return false
	}
	override method seAnimaASaquear(unaVictima){
		return super(unaVictima) && self.tieneAlgunoDe(["permisoDeLaCorona"])
	}
}