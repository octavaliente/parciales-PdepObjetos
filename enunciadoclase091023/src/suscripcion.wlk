import juego.*
import usuario.*

class Suscripcion{
	const precio
	
	method actualizar(unTipoSuscripcion, unUsuario){
		unUsuario.actualizarSuscripcion(unTipoSuscripcion)
	}
	
	method precio(){
		return precio
	}
}

class Premium inherits Suscripcion {
	method puedeJugar(unJuego){
		return true
	}
}

class Base inherits Suscripcion {
	method puedeJugar(unJuego){
		return unJuego.precio() < 30
	}
}

class Infantil inherits Suscripcion {
	method puedeJugar(unJuego){
		return unJuego.categoria() == "infantil"
	}
}

class Prueba inherits Suscripcion {
	method puedeJugar(unJuego){
		return unJuego.categoria() == "demo"
	}
}

const premium = new Premium(precio = 50)
const base = new Base(precio = 25)
const infantil = new Infantil(precio = 10)
const prueba = new Prueba(precio = 0)