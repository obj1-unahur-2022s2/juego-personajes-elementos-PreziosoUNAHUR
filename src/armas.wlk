object ballesta {
	var cantidadDeFlechas = 10
	
	method estaCargada() = cantidadDeFlechas > 0
	
	method usarArma() {
		cantidadDeFlechas -= 1 // se descuenta de a uno
	}
	
	method potenciaDelArma() = 4
}

object jabalina {
	var estaCargada = true
	
	method estaCargada() = estaCargada
	
	method usarArma() {
		estaCargada = false
	}
	
	method potenciaDelArma() = 30
}