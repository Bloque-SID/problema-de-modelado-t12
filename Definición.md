
|Nombre|Personaje|
|--|--|
|Definicón|Entidad del jugador |
|Tipo|Fundamental|

Campos
|Campo|Tamaño|Tipo de dato|Descripción|
|--|--|--|--|
|Nombre|20|String|Nombre del personaje|
|IDPersonaje|7|String|Identificación del personaje|

|Nombre|Habilidad|
|--|--|
|Definicón|Capacidad con ciertas caracteristicas|
|Tipo|Fundamental|

Campos
|Campo|Tamaño|Tipo de dato|Descripción|
|--|--|--|--|
|Nombre|20|String|Nombre de la habilidad|
|Descripción|500|String|Descripción de la habilidad|
|Tipo|10|String|Tipo de la habilidad ("Ofensiva", "Defensiva", "Curativa", "Mágica",”Pasiva”)|
|IDhabilidad|6|String|Identificación de la habilidad|

|Nombre|Objeto|
|--|--|
|Definicón|Cosa material inanimada que usa el personaje|
|Tipo|Fundamental|

Campos
|Campo|Tamaño|Tipo de dato|Descripción|
|--|--|--|--|
|Nombre|15|String|Nombre del objeto|
|Tipo|20|String|Tipo de objeto("Arma", "Armadura", "Consumible", "Libro de hechizos")|
|IDObj|7|String|Identificación del objeto|

|Nombre|Monstruo|
|--|--|
|Definicón|Entidad sin conciencia que ataca a las razas|
|Tipo|Fundamental|

Campos
|Campo|Tamaño|Tipo de dato|Descripción|
|--|--|--|--|
|Nombre|20|String|Nombre del monstruo|
|Descripción|500|String|Descripción del monstruo|
|Nivel|3|Entero|Nivel del monstruo|
|IDMon|6|String|Identificador del monstruo|

|Nombre|Raza|
|--|--|
|Definicón|Cada uno de los grupos étnicos que aparecen en el mundo|
|Tipo|Secundaria|

Campos
|Campo|Tamaño|Tipo de dato|Descripción|
|--|--|--|--|
|Nombre|15|String|Nombre de la raza|
|IDraza|7|String|Identificador de la raza|

|Nombre|Clase|
|--|--|
|Definicón|Profesión con caracteristicas unicas|
|Tipo|Secundaria|

Campos
|Campo|Tamaño|Tipo de dato|Descripción|
|--|--|--|--|
|Nombre|15|String|Nombre de la clase|
|IDClase|7|String|Identificador de la clase|

|Nombre|Característica|
|--|--|
|Definicón|Cualidadades  o propiedades unicas|
|Tipo|Secundaria|

Campos
|Campo|Tamaño|Tipo de dato|Descripción|
|--|--|--|--|
|Nombre|15|String|Nombre de la caracteristica|
|IDCaracteristica|6|String|Identificación de la caracteristica|

|Nombre|Habilidades|
|--|--|
|Definicón||
|Tipo|Debil|

Campos
|Campo|Tamaño|Tipo de dato|Descripción|
|--|--|--|--|
|IDPersonaje|7|String|Identificación del personaje|
|IDhabilidad|6|String|Identificación de la habilidad|
|Nivel|3|Entero|Nivel de la habilidad|

|Nombre|Clases|
|--|--|
|Definicón|Las clases de un personaje|
|Tipo|Debil|

Campos
|Campo|Tamaño|Tipo de dato|Descripción|
|--|--|--|--|
|IDPersonaje|7|String|Identificación del personaje|
|IDClase|7|String|Identificador de la clase|
|Nivel|3|Entero|Nivel de la habilidad|


|Nombre|CarcateristicasClase|
|--|--|
|Definicón|Las caracteristicas de una clase|
|Tipo|Debil|

Campos
|Campo|Tamaño|Tipo de dato|Descripción|
|--|--|--|--|
|IDClase|7|String|Identificador de la clase|
|IDCaracteristica|6|String|Identificación de la caracteristica|

|Nombre|CarcateristicasRaza|
|--|--|
|Definicón|Las caracteristicas de un raza|
|Tipo|Debil|

Campos
|Campo|Tamaño|Tipo de dato|Descripción|
|--|--|--|--|
|IDraza|7|String|Identificador de la raza|
|IDCaracteristica|6|String|Identificación de la caracteristica|
