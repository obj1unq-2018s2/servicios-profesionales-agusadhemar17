import universidades.*
import profesionales.*


/*Los solicitantes pueden ser personas o instituciones. 
 * Nos interesa saber para cada solicitante si puede (o no) ser atendido por un profesional.

De cada persona se debe indicar en qué provincia vive. Puede ser atendida por los profesionales 
* que pueden trabajar en la provncia donde vive la persona. 
* Cada institución tiene una lista de universidades que reconoce.
*  Puede ser atendida por los profesionales que estudiaron en alguna de las universidades 
* reconocidas por la institución.

A una empresa se le tiene que poder preguntar si puede satisfacer a un solicitante. La condición para esto es que el solicitante pueda ser atendido por, al menos, uno de los profesionales contratados por la empresa.
 */


class Solicitantes {
	var provincia 
	
	method puedeSerAtendidoPor(profesional){
		return profesional.provinciasDondePuedeTrabajar().contain(provincia)
	}
}
