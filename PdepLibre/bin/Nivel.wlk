class NivelConLimiteDeProductos {
	const limiteCarrito
	
	method permiteAgregar(unaCantidadProductos){
		return unaCantidadProductos < limiteCarrito
	}
}

const bronce = new NivelConLimiteDeProductos(limiteCarrito = 1)
const plata = new NivelConLimiteDeProductos(limiteCarrito = 5)

object oro {
	method permiteAgregar(unaCantidadProductos){
		return true
	}
}
