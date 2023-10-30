class Empleado {
	var operacionesConcretadas = #{}
	var reservas = #{}
	var comisiones 
	
	method comisiones(){
		return comisiones
	}
	
	method operacionesConcretadas(){
		return operacionesConcretadas
	}
	
	method cantidadOperacionesConcretadas(){
		return operacionesConcretadas.size()
	}
	
	method reservas(){
		return reservas
	}
	
	method cantidadReservas(){
		return reservas.size()
	}
	
	method zonasRepetidas(posibleEmpleado){
		return self.zonasTrabajadas().any({unaZona => posibleEmpleado.zonasTrabajadas().find(unaZona)})
	}
	
	method zonasTrabajadas(){
		return operacionesConcretadas.map({unaOperacion => unaOperacion.zona()}).asSet()
	}
	
	method reservaPisada(posibleEmpleado){
		return self.reservas().any({unaReserva => posibleEmpleado.operacionesConcretadas().find(unaReserva)})
	}
	
	method operacionPisada(posibleEmpleado){
		return self.operacionesConcretadas().any({unaOperacionConcretada => posibleEmpleado.reservas().find(unaOperacionConcretada)})
	}
	
	method tendraProblemas(posibleEmpleado){
		return self.zonasRepetidas(posibleEmpleado) && (self.reservaPisada(posibleEmpleado) || self.operacionPisada(posibleEmpleado))
	}
	
	method reservar(unaOperacion, unCliente){
		unaOperacion.reservarPara(unCliente)
		reservas.add(unaOperacion)
	}
	
	method concretarOperacion(unaOperacion, unCliente){
		unaOperacion.concretarPara(unCliente)
		operacionesConcretadas.add(unaOperacion)
	}
	
}
