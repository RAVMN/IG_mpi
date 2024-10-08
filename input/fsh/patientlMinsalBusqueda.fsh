Profile: MINSALPacienteBusqueda
Parent: PacienteCl
Id: MINSALPacienteBusqueda
Title: "MINSAL Paciente Busqueda"
Description: "Paciente definido para la busqueda dentro del \"Indice Maestro de Pacientes\". Este es utilizado en la operación $match como parametro de entrada."

* extension contains PaisOrigenMPI named PaisOrigen 0..1 MS
* extension contains Religion named Religion 0..1 MS
//* extension contains PueblosOriginariosPerteneciente named PueblosOriginariosPerteneciente 0..1 MS
* extension contains PueblosAfrodescendiente named PueblosAfrodescendiente 0..1 MS
* extension contains PueblosOriginarios named PueblosOriginarios 0..1 MS
* extension[nacionalidad] 0..1 MS
* extension[IdentidadDeGenero] 0..1 MS

* identifier 0..* MS
* identifier ^short = "Identificador de paciente"
* identifier.type 1..1 MS
* identifier.type ^short = "Tipo de documento"
* identifier.type ^definition = "Tipo de documento"
* identifier.type ^comment = "Tipo de documento"
* identifier.type from VSTipoIdentificador
* identifier.type ^binding.description = "Identificadores definidos por DEIS"
  * coding 1..1   
    * system 0..1
    * code 1..1
* identifier.type.extension[paisEmisionDocumento] 0..1 MS
* identifier.value 0..1 MS
* identifier.value ^short = "Valor del identificador" 

* active MS
  * ^short = "Si el registro de este paciente está en uso activo."


* gender ^short = "Sexo Registral del paciente"
* gender 0..1 MS

//* address.extension contains http://hl7.org/fhir/StructureDefinition/geolocation named geolocalizacion 0..1
* address.extension[Geolocalizacion] ^short = "Dirección absoluta, es decir, latitud y longitud." 
* address.use 0..1 MS

* address.line 0..1 MS
* address.line ^short = "Calle o avenida, numero y casa o dpto"
* address.line ^definition = "Calle o avenida, numero y casa o dpto"
* address.period 0..1 MS
* address.period ^short = "Periodo de tiempo durante el  cual es válida la dirección entregada"
* address.extension contains SituacionCalle named SituacionCalle 0..1 MS

* birthDate 0..1 MS

* telecom 0..* MS
* telecom.system 1..1 MS
* telecom.system ^short = "phone | email"
* telecom.system ^definition = "Sistema de contacto"
* telecom.value 1..1 MS
* telecom.value ^short = "Valor de contacto"
* telecom.rank MS
* telecom.rank ^short = "Orden de uso del método de contacto, siendo 1 = prioritario"

* telecom.period MS
* telecom.period ^short = "Periodo de tiempo durante el cual es válido el contacto del paciente"

* maritalStatus from VSEstadoCivil
* maritalStatus MS
* maritalStatus ^short = "Estado civil del paciente"

* deceased[x] 1..1 MS
* deceased[x] ^short = "Puede indicar si el paciente esta fallecido o no o en su defecto, agregar la fecha de fallecimiento."
* deceased[x] ^definition = "Puede indicar si el paciente esta fallecido o no o en su defecto, agregar la fecha de fallecimiento."

* contact 0..* MS