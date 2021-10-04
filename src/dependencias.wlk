import rodados.*

class Dependencia{
	const flota=[]
	var property cantEmpleados = 0
	
	method agregarAFlota(unRodado){
		flota.add(unRodado)
	}
	method flota(){return flota}
	method quitarDeFlota(unRodado){
		flota.remove(unRodado)
	}
	
	method todosVanAMasDe(unaVelocidad){
		return flota.all{f => f.velocidad() >= unaVelocidad}
	}
	
	method estaBienEquipada(){
		return flota.size()>=3  and self.todosVanAMasDe(100)
	}
	method rodadosDeUnColor(unColor){
		return flota.filter{ f => f.color() == unColor}	
	}
	
	method capacidadTotalEnColor(unColor){
		return self.rodadosDeUnColor(unColor).sum{f => f.capacidad()}
	}
	
	method colorDelRodadoMasRapido(){
		if (not flota.isEmpty())
			return flota.max({f => f.velocidad()}).color()
		else{
			self.error("La flota está vacía")
			return ""
			}
	}
	
	method capacidadFlota(){
		return flota.sum{f => f.capacidad()}
	}
	//que es el resultado de restar, de la cantidad de empleados, 
	//la capacidad sumada de los vehículos de la flota. 
	method capacidadFaltante(){
		return 0.max(cantEmpleados - self.capacidadFlota())
	}
	
	//la condición es que la dependencia tenga al menos 40 empleados
	// y 5 rodados.
	method esGrande(){
		return cantEmpleados >= 40 and flota.size() >= 5
	}
	
	method pesoTotalFlota(){
		return flota.sum({f=>f.peso()})
	}
	
	
}
