class BarcoPirata{
	var mision
	var tripulantes = #{}
	var capacidad
	
	method esSaqueadaPorPirata(unPirata){
		return unPirata.pasadoDeGrogXD()
	}
	method hayEspacio(){
		return capacidad > 0
	}
	method puedeIngresar(unPirata){
		return self.hayEspacio() && unPirata.esUtil(mision)
	}
	method incorporarPirata(unPirata){
		if(self.puedeIngresar(unPirata)){
			tripulantes.add(unPirata)
			capacidad -= 1
		}
	}	
	method cambiarMision(unaMision){
		mision = unaMision
		self.removerTripulantesInutiles()
	}
	method removerTripulantesInutiles(){
		tripulantes = tripulantes.filter{unPirata => unPirata.esUtil(mision)}
	}
	method elMasEbrio(){
		return tripulantes.max{unPirata => unPirata.nivelDeEbriedad()}
	}
	method anclar(unaCiudadCostera){
		tripulantes.forEach{unPirata => unPirata.beberGrogXD()}
		const pirataPerdido = self.elMasEbrio()
		unaCiudadCostera.aniadirHabitante(pirataPerdido)
		self.eliminarTripulante(pirataPerdido)
	}
	method eliminarTripulante(unPirata){
		tripulantes.remove(unPirata)
	}
	method esTemible(){
		return mision.puedeRealizarBarco(self)
	}
	method tieneSuficienteTripulacion(unaCantidad){
		return self.porcentajeTripulacion() >= unaCantidad
	}
	method porcentajeTripulacion(){
		return tripulantes.size() * 100 / capacidad
	}
	method tripulanteTiene(listaItems){
		return tripulantes.any({unPirata => unPirata.tieneAlgunoDe(listaItems)})
	}
	method pasadosDeGrogXD(){
		return self.tripulantesPasadosDeGrogXD().size() == tripulantes.size() 
	}
	method esVulnerable(unBarco){
		return self.porcentajeTripulacion() < unBarco.porcentajeTripulacion() / 2
	}
	method cantidadPasadosDeGrogXD(){
		return self.tripulantesPasadosDeGrogXD().size()
	}
	method itemsPasadosDeGrogXD(){
		var itemsDePasados = #{}
		itemsDePasados.addAll(self.itemsDePasadosTotales())
		return itemsDePasados.size()
	}
	method itemsDePasadosTotales(){
		return self.tripulantesPasadosDeGrogXD().flatMap{unPirata => unPirata.items()}
	}
	method tripulantesPasadosDeGrogXD(){
		return tripulantes.filter{unPirata => unPirata.pasadoDeGrogXD()}
	}
	method pasadoConMasDinero(){
		return self.tripulantesPasadosDeGrogXD().max{unPirata => unPirata.cantidadDinero()}
	}
	method mayoresInvitados(){
		return tripulantes.max{unTripulante => tripulantes.filter{otroTripulante => otroTripulante.invitadoPor() == unTripulante}.size()}
	}
}
