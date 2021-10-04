class Corsa {
	const property color
	
	method capacidad() {return 4}
	//method capacidad()=4
	method velocidad() {return 150}
	method peso() {return 1300}
}

class Kwid {
	const tieneTanqueAdicional = false
	
	method capacidad()= if (tieneTanqueAdicional) {3} else {4}
	method velocidad()= if (tieneTanqueAdicional) {120} else {110}
	method peso() = 1200 + if (tieneTanqueAdicional) {150} else {0}
	method color(){return "azul"}
}

object Trafic{
	var property interior
	var property motor
	
	method capacidad()= interior.capacidad()
	method velocidad()= motor.velocidad()
	method peso()= 4000 + interior.peso() + motor.peso()
	method color() = "blanco"
}

object interiorComodo{
	method capacidad()=5
	method peso() = 700
}
object popular{
	method capacidad()=12
	method peso() = 100
}

object motorPulenta{
	method peso()=800
	method velocidad()=130
}

object motorBataton{
	method peso()=500
	method velocidad()=80
}

class AutoEspecial{
	var property capacidad
	var property velocidad
	var property peso
	var property color
}