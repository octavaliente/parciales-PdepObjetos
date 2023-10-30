import usuario.*
import suscripcion.*

class Juego {
	const nombre
	const precio
	const categoria
	
	method nombre() {
		return nombre
	}
	
	method categoria(){
		return categoria
	}
	
	method precio(){
		return precio
	}
}

class Violento inherits Juego{
	method jugar(unUsuario, unTiempo){
		unUsuario.humor(unUsuario.humor()-10*unTiempo)
	}
}

class Moba inherits Juego{
	method jugar(unUsuario, unTiempo){
		unUsuario.saldo(unUsuario.saldo()-30)
	}
}

class Terror inherits Juego{
	method jugar(unUsuario, unTiempo){
		unUsuario.suscripcion(infantil)
	}
}

class Estrategico inherits Juego{
	method jugar(unUsuario, unTiempo){
		unUsuario.humor(unUsuario.humor()+5*unTiempo)
	}
}

