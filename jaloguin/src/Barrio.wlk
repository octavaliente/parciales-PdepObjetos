class Barrio {
	const habitantes = #{}
	var elementosDeNiniosConCaramelos = #{}
	method niniosRicos(){
		return self.ordenamientoPorCaramelos().take(3)
	}
	method ordenamientoPorCaramelos(){
		return habitantes.sortedBy{unNinio, otroNinio => unNinio.caramelos() > otroNinio.caramelos()}
	}
	method elementosDeNinios(){
		self.niniosConCaramelos().map{unNinio => elementosDeNiniosConCaramelos.add(unNinio.elementos())}
	}
	method niniosConCaramelos(){
		return habitantes.filter{unNinio => unNinio.tieneMasDeCaramelos(10)}
	}
	method elementosDeNiniosConCaramelos(){
		return elementosDeNiniosConCaramelos
	}
}
