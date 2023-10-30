import Cupon.*
import NoHayMasEspacioException.*
import Nivel.*

class Usuario {
	const nombre
	const carrito = []
	const cupones = []
	
	var saldo
	var puntos
	var nivel
	
	
	method agregarAlCarrito (unProducto){
		if (nivel.permiteAgregar(carrito.size())){
			carrito.add(unProducto)
		} else {
			throw new NoHayMasEspacioException(message = "Limite de Espacio alcanzado")
		}
		
	}
	method comprarCarrito(){
		 const cuponSinUsar = self.cuponSinUsar()
		 cuponSinUsar.usar()
		 const precioAPagar = cuponSinUsar.aplicarDescuento(self.precioCarrito())
		 saldo -= precioAPagar
		 self.sumarPuntos(precioAPagar)
	}
	method precioCarrito(){
		return carrito.sum({unProducto => unProducto.precioFinal()})
	}
	method cuponSinUsar(){
		return cupones.filter({unCupon => !unCupon.fueUsado()}).anyOne()
	}
	method sumarPuntos(unPrecio){
		puntos += unPrecio * 0.1
	}
	method esMoroso(){
		return saldo < 0
	}
	method reducirPuntos(unosPuntos){
		puntos -= unosPuntos
	}	
	method actualizarNivel(){
		nivel = self.nivelSegunPuntos()
	}
	method nivelSegunPuntos(){
		if (puntos < 5000) return bronce
		else if (puntos < 15000) return plata
		else return oro
	}
}
