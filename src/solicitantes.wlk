import profesionales.*
import universidades.*

class SolicitantePersona {
	var property provinciaDondeVive
	
	method puedeSerAtendidoPor(unProfesional) {
		return unProfesional.provincias().contains(provinciaDondeVive)
	}
	
}

class SolicitanteInstitucion {
	const property universidadesQueReconoce = #{}
	method agregarUniversidadReconocida(unaUniversidad){
		universidadesQueReconoce.add(unaUniversidad)
	}
	method quitarUniversidadReconocida(unaUniversidad) {
		universidadesQueReconoce.remove(unaUniversidad)
	}
	
	method puedeSerAtendidoPor(unProfesional){
		return universidadesQueReconoce.contains(unProfesional.universidad())
	}
}


class SolicitanteClub {
	const property provinciasDondeEsta = #{}
	
	method agregarProvinciaDondeEsta(unaProvincia){
		provinciasDondeEsta.add(unaProvincia)
	}
	
	method quitarProvinciaDondeEsta(unaProvincia){
		provinciasDondeEsta.remove(unaProvincia)
	}
	
	method puedeSerAtendidoPor(unProfesional){
		return provinciasDondeEsta.any(
			 { pcia => unProfesional.provincias().contains(pcia) }
		)
	}
}