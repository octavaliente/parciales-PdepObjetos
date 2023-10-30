object inmobiliaria {
	const operaciones = #{}
	const empleados = #{}
	
	method mejorEmpleadoSegun(criterio) {
		return empleados.max({unEmpleado => criterio.tipoComparacion(unEmpleado)})
	}
}

object comisiones {
	method tipoComparacion(unEmpleado){
		return unEmpleado.comisiones()
	}
}

object operaciones {
	method tipoComparacion(unEmpleado){
		return unEmpleado.operacionesConcretadas()
	}
}

object reservas {
	method tipoComparacion(unEmpleado){
		return unEmpleado.cantidadReservas()
	}
}