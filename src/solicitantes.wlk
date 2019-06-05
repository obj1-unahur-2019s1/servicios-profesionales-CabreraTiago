class Solicitante {

	method puedeSerAtendido(profesional)

}

class Persona inherits Solicitante {

	var property provincia

	override method puedeSerAtendido(profesional) {
		return profesional.provinciasDondePuedeTrabajar().contains(provincia)
	}

}

class Institucion inherits Solicitante {

	const property listaUniversidades = #{}

	override method puedeSerAtendido(profesional) {
		return listaUniversidades.contains(profesional.universidad())
	}

}

