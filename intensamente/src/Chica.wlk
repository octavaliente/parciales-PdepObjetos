import Evento.*
import Emocion.*

class Chica {
	var nivelDeFelicidad = 1000
	var emocionDominante
	var recuerdos = []
	var pensamientosCentrales = #{}
	var procesosMentales = []
	
	method nivelDeFelicidad (){
		return nivelDeFelicidad
	}
	
	method vivirUnEvento(unaDescripcion){
		const evento = new Evento (
			descripcion = unaDescripcion,
			fecha = new Date(),
			emocionAsociada = emocionDominante 
		)
		recuerdos.add(evento)
	}
	
	method asentarRecuerdo(unEvento){
		unEvento.vivirEmocion(self)
	}
	
	method estaFeliz(){
		return nivelDeFelicidad > 500
	}
	
	method disminuirNivelDeFelicidad(unPorcentaje){
		nivelDeFelicidad -= nivelDeFelicidad * unPorcentaje
	}
	
	method nuevoPensamientoCentral(unEvento){
		pensamientosCentrales.add(unEvento)
	}
	
	method recuerdosRecientes(){
		return recuerdos.reverse().take(5)
	}
	
	method pensamientosCentrales(){
		return pensamientosCentrales
	}
	
	method pensamientosCentralesDificiles(){
		return pensamientosCentrales.filter{unEvento => unEvento.esDificilDeExplicar()}
	}
	
	method niegaRecuerdo(unEvento){
		return emocionDominante.niega(unEvento)
	}
	method dormir(){
		procesosMentales.forEach{unProcesoMental => unProcesoMental.efectuarSobre(self)}
	}
	method asentarRecuerdos(unosRecuerdos){
		unosRecuerdos.forEach{unRecuerdo => self.asentarRecuerdo(unRecuerdo)}
	}
	method asentarRecuerdosDiarios(){
		self.asentarRecuerdos(self.recuerdosRecientes())
	}
	method asentarRecuerdosClaves(unaPalabraClave){
		const recuerdosFiltrados = recuerdos.filter({unRecuerdo => unRecuerdo.contienePalabra(unaPalabraClave)})
		self.asentarRecuerdos(recuerdosFiltrados)
	}
	
}
