class Producto{
	const nombre
	const precioBase
	
	method precio(){
		return precioBase * 1.21
	}
	
	method precioFinal ()
}

class Mueble inherits Producto {
	override method precioFinal(){
		return self.precio() + 1000
	}
}

class Indumentaria inherits Producto {
	var esDeTemporadaActual
	
	override method precioFinal () {
		if(esDeTemporadaActual){
			return self.precio() *1.1
		} else {
			return self.precio()
		}
	}
}

class Ganga inherits Producto {
	override method precioFinal(){
		return 0
	}
}