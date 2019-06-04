class Empresa {

	const profesionales = #{}
	const property honorariosReferencia

	method contratar(profesional) {
		profesionales.add(profesional)
	}

	method cuantosEstudiaronEn(universidad) {
		return profesionales.count{ profesional => profesional.universidad().equals(universidad) }
	}

	method profesionalCaros() {
		return profesionales.filter{ profesional => profesional.honorariosPorHora() > honorariosReferencia }
	}

	method universidadesFormadoras() {
		return profesionales.map{ profesional => profesional.universidad() }.asSet()
	}

	method profesionalMasBarato() {
		return profesionales.min{ profesional => profesional.honorariosPorHora() }
	}

	method genteAcotada() {
		return profesionales.all{ profesional => profesional.provinciasDondePuedeTrabajar().size() <= 3 }
	}

}

