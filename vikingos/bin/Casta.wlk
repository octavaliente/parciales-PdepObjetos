import Vikingo.*

object jarl {
	method permiteExpedicion(unVikingo){
		return !unVikingo.tieneArmas()
	}
}

class CastaMediaOMas {
	method permiteExpedicion(unVikingo){
		return true
	}
}

class Karl inherits CastaMediaOMas{
	
}

class Thrall inherits CastaMediaOMas{
	
}