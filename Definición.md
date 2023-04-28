
|Nombre|Personaje|
|--|--|
|Definicón|Entidad del jugador |
|Tipo|Fundamental|

| Campo | Tamaño | Tipo de dato | Descripción |
|-------|--------|--------------|-------------|
| Nombre | 50     | VARCHAR2     | Nombre del personaje, no puede ser nulo |
| IdPersonaje | 10 | NUMBER       | Identificador único del personaje, no puede ser nulo |
| IdRazaPersonaje | 10 | NUMBER   | Identificador único de la raza del personaje, no puede ser nulo |
    
La tabla Personaje tiene una clave primaria compuesta por el campo IdPersonaje, y también una clave foránea llamada FK_Personaje_Raza que referencia a la tabla RazaPersonaje a través del campo IdRazaPersonaje.

|Nombre|Habilidad|
|--|--|
|Definicón|Capacidad con ciertas caracteristicas|
|Tipo|Fundamental|

| Campo | Tamaño | Tipo de dato | Descripción |
| --- | --- | --- | --- |
| Nombre | 50 | VARCHAR2 | Nombre de la habilidad, no nulo |
| Descripcion | 200 | VARCHAR2 | Descripción detallada de la habilidad |
| Tipo | 20 | VARCHAR2 | Tipo de la habilidad, no nulo |
| IdHabilidad | 10 | NUMBER | Identificador único de la habilidad, no nulo y clave primaria |

|Nombre|Objeto|
|--|--|
|Definicón|Cosa material inanimada que usa el personaje|
|Tipo|Fundamental|

| Campo | Tamaño | Tipo de dato | Descripción |
| --- | --- | --- | --- |
| IdPersonaje | 10 | NUMBER | Identificador del personaje que posee el objeto |
| Nombre | 50 | VARCHAR2 | Nombre del objeto |
| Descripcion | 200 | VARCHAR2 | Descripción del objeto |
| Tipo | 20 | VARCHAR2 | Tipo de objeto |
| Cantidad | - | NUMBER | Cantidad de objetos que posee el personaje |

|Nombre|Monstruo|
|--|--|
|Definicón|Entidad sin conciencia que ataca a las razas|
|Tipo|Fundamental|

|Campo|Tamaño|Tipo de dato|Descripción|
|--|--|--|--|
|IdMonstruo||NUMBER(10)|Identificador único del monstruo|
|Descripcion|200|VARCHAR2|Descripción del monstruo|
|Nombre|50|VARCHAR2|Nombre del monstruo|
|Nivel||NUMBER(3)|Nivel del monstruo|
|IdRazaMonstruo||NUMBER(10)|Identificador único de la raza del monstruo|


|Nombre|RazaPersonaje|
|--|--|
|Definicón|Cada uno de los grupos étnicos que aparecen en el mundo|
|Tipo|Secundaria|

| Campo | Tamaño | Tipo de dato | Descripción |
| --- | --- | --- | --- |
| IdRazaPersonaje | 10 | NUMBER | Identificador único de la raza del personaje |
| Nombre | 50 | VARCHAR2 | Nombre de la raza del personaje, no puede ser nulo |

|Nombre|RazaMonstruo|
|--|--|
|Definicón|Cada uno de los monstruos que aparecen en el mundo|
|Tipo|Secundaria|

|Campo|Tamaño|Tipo de dato|Descripción|
|--|--|--|--|
|IdRazaMonstruo|10|NUMBER|Identificador único de la raza de monstruo|
|Nombre|50|VARCHAR2|Nombre de la raza del monstruo, no nulo|

|Nombre|Clase|
|--|--|
|Definicón|Profesión con caracteristicas unicas|
|Tipo|Secundaria|

| Campo | Tamaño | Tipo de dato | Descripción |
|-------|--------|-------------|-------------|
| IdClase | 10 | NUMBER | Identificador único de la clase |
| Nombre | 50 | VARCHAR2 | Nombre de la clase, no puede ser nulo |

|Nombre|Característica|
|--|--|
|Definicón|Cualidadades  o propiedades unicas|
|Tipo|Secundaria|

| Campo | Tamaño | Tipo de dato | Descripción |
| --- | --- | --- | --- |
| IdCaracteristica | 10 | NUMBER | Identificador único de la característica |
| Nombre | 50 | VARCHAR2 | Nombre de la característica |
| Tipo | 50 | VARCHAR2 | Tipo de la característica |
| Valor | 10 | NUMBER | Valor numérico de la característica |

|Nombre|Habilidad|
|--|--|
|Definicón|Es una entidad del sistema que almacena información sobre las habilidades que tienen los personajes y los monstruos en el juego|
|Tipo|Secundaria|

Campos
| Campo | Tamaño | Tipo de dato | Descripción |
| --- | --- | --- | --- |
| Nombre | 50 | VARCHAR2 | Nombre de la habilidad, no nulo |
| Descripcion | 200 | VARCHAR2 | Descripción detallada de la habilidad |
| Tipo | 20 | VARCHAR2 | Tipo de la habilidad, no nulo |
| IdHabilidad | 10 | NUMBER | Identificador único de la habilidad, no nulo y clave primaria |

|Nombre|Clase|
|--|--|
|Definicón|Las clases de un personaje|
|Tipo|Debil|

Campos
| Campo | Tamaño | Tipo de dato | Descripción |
|-------|--------|-------------|-------------|
| IdClase | 10 | NUMBER | Identificador único de la clase |
| Nombre | 50 | VARCHAR2 | Nombre de la clase, no puede ser nulo |
