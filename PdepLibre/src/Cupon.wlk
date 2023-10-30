class Cupon {
	const descuento
	var fueUsado
	
	method fueUsado(){
		return fueUsado
	}
	
	method aplicarDescuento(unValor){
		return unValor * descuento
	}
	
	method usar(){
		fueUsado = true
	}
}
