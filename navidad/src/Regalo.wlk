class Regalo {
	const precio
	const destinatario
	
	method precio(){
		return precio
	}
	method destinatario(){
		return destinatario
	}
	
	method esTeQuierenMucho(precioPromedio){
		return precio > precioPromedio
	}
}

class Tarjeta inherits Regalo {
	const valorAdjunto
	override method precio(){
		return 2 + valorAdjunto
	}
	method esCara(){
		return self.precio() >= 1000
	}
	
}
