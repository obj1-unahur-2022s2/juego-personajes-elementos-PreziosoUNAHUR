import armas.*

object castillo {
	var nivelDeDefensa = 150
	
	method altura() = 20
	
	method nivelDeDefensa() = nivelDeDefensa
	
	method recibirAtaque(arma) {
		nivelDeDefensa = 0.max(nivelDeDefensa - arma.potenciaDelArma()) // no quiero que vaya x debajo de 0 que es un min, por lo tanto se usa el max.
	}
	
	method valorOtorgado() = nivelDeDefensa/5
	method recibirTrabajo() {nivelDeDefensa = 200.min(nivelDeDefensa + 20)} 
}

object aurora {
	var estaViva = true
	
	method altura() = 1
	
	method recibirAtaque(arma) {
		if (arma.potenciaDelArma() >=10) {
			estaViva = false
		}
	}
	
	method valorOtorgado() = 15
	method recibirTrabajo() {} 
}

object tipa {
	var altura = 8
	
	method altura() = altura
	
	method recibirAtaque(arma.potenciaDelArma()) {
		// no hace nada
		
	method valorOtorgado() = altura*2
	method recibirTrabajo() {altura++} 
	}
}