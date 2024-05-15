import universidades.*

class ProfesionalAsociado {
	const property universidad
	
	method honorarios() = universidad.honorariosRecomendados()
	method provincias() = #{universidad.provincia()}
}


class ProfesionalVinculado {
	const property universidad
	var property honorarios = 3000
	method provincias() =
		#{"Entre Rios", "Santa Fe", "Corrientes"}
}


class ProfesionalLibre {
	const property universidad
	const property provincias = #{}
	var property honorarios
	
	method agregarProvincia(unaProvincia) {
		provincias.add(unaProvincia)
	}
	method quitarPronvincia(unaProvincia) {
		provincias.remove(unaProvincia)
	}
}
