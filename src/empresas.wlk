import profesionales.*
import solicitantes.*

class Empresa {
	const property profesionales = []
	var property honorariosReferencia 
	
	method agregarProfesional(unProfesional){
		profesionales.add(unProfesional)
	}
	method quitarProfesional(unProfesional){
		profesionales.remove(unProfesional)
	}
	
	method cuantosEstudiaronEn(unaUniversidad){
		return profesionales.count( 
			{ p=> p.universidad()==unaUniversidad}
		)
	}
	
	method caros() {
		return profesionales.filter({
			p => p.honorarios() > honorariosReferencia
		}).asSet()
	}
	
	method formadoras() {
		return profesionales.map({
			p => p.universidad()
		}).asSet()
	}
	
	method elMasBarato() {
		return profesionales.min({
			p=>p.honorarios()
		})
	}
	
	method esDeGenteAcotadaAll() {
		return profesionales.all({
			p=>p.provincias().size() <= 3
		})
	}
	
	method esDeGenteAcotadaAny() {
		return not profesionales.any({
			p=>p.provincias().size() > 3
		})	
	}
	
	method puedeSatisfacerA(unSolicitante) {
		return profesionales.any({
			prof => unSolicitante.puedeSerAtendidoPor(prof)
		})
	}
	
}
