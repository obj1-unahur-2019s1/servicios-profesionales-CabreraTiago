class Profesional {

	var property universidad

	method provinciasDondePuedeTrabajar()

	method honorariosPorHora()

}

class ProfesionalAsociado inherits Profesional {

	override method provinciasDondePuedeTrabajar() {
		return #{ "Entre Ríos", "Corrientes", "Santa Fe" }
	}

	override method honorariosPorHora() {
		return 3000
	}

}

class ProfesionalVinculado inherits Profesional {

	override method provinciasDondePuedeTrabajar() {
		return #{ universidad.provincia() }
	}

	override method honorariosPorHora() {
		return return universidad.honorarios()
	}

}

class ProfesionalLibre inherits Profesional {

	const property provincias = #{}
	var property honorariosPorHora

	override method provinciasDondePuedeTrabajar() {
		return provincias
	}

}

