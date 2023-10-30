class Operacion{
	const inmueble
	var estado
	
	method comision()
	
	method zona(){
		return inmueble.zona()
	}
	
	method reservarPara(unCliente){
		estado.reservarPara(self, unCliente)
	}
	
	method concretarPara(unCliente){
		estado.concretarPara(self, unCliente)
	}
	
	method estado(nuevoEstado){
		estado = nuevoEstado
	}
}

class Alquiler inherits Operacion {
	const meses
	override method comision(){
		return inmueble.valor() * meses / 50000
	}
}

class Venta inherits Operacion {
	var porcentaje
	override method comision(){
		return inmueble.valor() * porcentaje
	}
}