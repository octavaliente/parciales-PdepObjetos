import Emocion.*

class Evento {
	const descripcion
	const emocionAsociada
	const fecha
	
	method emocionAsociada(){
		return emocionAsociada
	}
	
	method vivirEmocion(unaChica){
		emocionAsociada.efectoEmocional(unaChica, self)
	}
	method esDificilDeExplicar(){
		return descripcion.words().size() > 10
	}
	method contienePalabra(unaPalabra){
		descripcion.contains(unaPalabra)
	}
}