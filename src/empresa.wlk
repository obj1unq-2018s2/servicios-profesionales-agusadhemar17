import universidad.*
import profesionales.*

class Empresa{
	var honorarios
	var property profesionales = []

	
	method profesionalesCaros(){ return profesionales.filter({profesional=> profesional.honorariosPorHora()>honorarios})}
	method universidadesFormadoras (){return profesionales.map({profesional=> profesional.universidad()}).asSet()}
	method profesionalMasBarato(){ return profesionales.min({profesional=> profesional.honorariosPorHora()})}
	method provinciaCubierta(provincia){ return profesionales.any({provincia=> profesionales.provinciasDondePuedeTrabajar()})
	method cuantosProfesionalesEstudiaron(universidad){return profesionales.count({profesional=> profesional.universidad()==universidad})}
	//method esAtractivo(profesional){return
}
/*•el conjunto formado por sus profesionales caros.
 O sea, aquellos cuyo honorario es mayor al honorario de referencia de la empresa.
•el conjunto de las universidades formadoras, o sea, las universidades donde estudiaron sus profesionales contratados, sin repetidos.
•el profesional más barato (o sea, que sus honorarios son los más bajos).
•si una determinada provincia está cubierta (o sea, que haya al menos un profesional que pueda trabajar en ella).
•cuántos (un número) de sus profesionales contratados estudió en una determinada universidad.
• esta es más difícil
 dado un profesional, si es poco atractivo para la empresa.
 Esto es: si para cada provincia en la que puede trabajar el profesional, la empresa cuenta con otro que también puede cubrir esa provincia,
 *  y que cobra más barato.
 */