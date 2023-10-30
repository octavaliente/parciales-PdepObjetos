class Inmueble {
	const tamanio
	const ambientes
	const zona //unaZona	
	
	method valor()
	
	method zona(){
		return zona
	}
}

class Casa inherits Inmueble {
	const valorParticular
	
	
	override method valor(){
		return zona.valorAgregado(valorParticular)
	}
}

class Ph inherits Inmueble {

	override method valor(){
		return zona.valorAgregado(14000 * tamanio).min(500000)
	}
}

class Departamento inherits Inmueble {

	override method valor(){
		return zona.valorAgregado(350000 * ambientes)
	}
}