import Pirata.*

class CiudadCostera{
	method esSaqueadaPorPirata(unPirata){
		return unPirata.ebrio()
	}
	method esVulnerable(unBarco){
		return unBarco.tieneSuficienteTripulacion(40) || unBarco.pasadosDeGrogXD()
	}
}