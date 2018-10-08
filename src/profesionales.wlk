import universidad.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
    var recaudado = 0
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return  3000 }
	
	method recibirDinero(monto){ 
		recaudado +=monto
		// TODO Esto está mal, el propio IDE te lo está marcando.
		self.pasarDinero (asociacionProfesionalesDelLitoral.recibirDinero(monto))
	}
	method pasarDinero(profesional, monto){ 
		recaudado -=monto 
		profesional.recibirDinero(monto)
	}
		
	 //
}
/*/•los profesionales vinculados le donan la mitad a la universidad, y la otra mitad la gastan 
inmediatamente sin que quede registro en la aplicación. Hay que mantener el total recibido por 
donaciones de cada universidad.
•los profesionales asociados le dan todo lo que cobran a la Asociación de Profesionales del Litoral. 
Agregar un objeto que represente a esta Asociación, que mantiene el total recaudado.
•los profesionales libres se guardan todo lo que cobran. Debe mantenerse el total recaudado 
por cada uno. 
 Un profesional libre le puede pasar una cantidad X de dinero a otro: se resta X del total 
 recaudado, y el otro cobra X. P.ej. si  ruben  tiene 10000 de total recaudado,  nora  tiene 12000, y 
 hacemos nora.pasarDinero(ruben,4000)

entonces  nora  pasa a tener 8000, y  ruben  14000 (porque cobró 4000).*/

object asociacionProfesionalesDelLitoral{
	var property recaudacion 
	method recibirDinero(monto){ return recaudacion+=monto}

}
// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	var recaudado
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() { return #{universidad.provincia()}}
	method honorariosPorHora() {return universidad.honorariosPorHora()}
	
	// TODO Debería darle la mitad a la universidad. 
	method recibirdinero(monto){ recaudado += monto	}
	method pasarDinero(profesional,monto){ 
		recaudado -= monto
		universidad.meDonan((universidad.honorariosPorHora()/2))
	}
}



// a esta clase le faltan atributos y métodos
class ProfesionalLibre {//se indica para cada uno en que provincias pueden trabajar y los honorarios por hora, además de la universidad.
	var universidad
	
	// TODO Ojo con esto, inicializar la colección de esta manera no es necesario y posiblemente se deba a un error conceptual importante.
	var property provincias = #{}
	var  property honorarios
	var recaudado = 0
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() { return provincias}
	method honorariosPorHora() { return  honorarios }
	method recibirdinero(monto){ recaudado +=monto}
	method pasarDinero(profesional, monto){ 
		recaudado -=monto 
		profesional.recibirDinero(monto)
	}
	}
