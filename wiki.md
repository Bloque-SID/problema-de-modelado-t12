# Descripcion
Esta base de datos permitiría a los jugadores de rol de fantasía llevar un registro de sus personajes, sus habilidades, objetos y mascota, sus características asociadas a su raza y clase, los monstruos a los que se enfrentan en sus aventuras, las misiones que ha realizado y sus respectivos objetivos. Con esta información, el juego puede generar unn registro del progreso y estadisticas del jugador para adaptarse y generar nuevos desafíos y misiones para los jugadores.

El ejemplo es original, tomado en base una idea generada con inteligencia artificial. 

# Modelo conceptual 
## Diagrama de chen
![Diagrama de Chen](https://user-images.githubusercontent.com/94185672/233879505-f48bb7fc-47b6-4b90-b20c-8e1d46443c78.png)

## Diagrama con Datamodeler
![Diagrama Datamodeler]()

# Algoritmo de transformacion de diagrama de chen a base de datos SQL
## Paso 1
* ![Paso 1.1](https://user-images.githubusercontent.com/94185672/233879558-a4157b0e-0e34-4f81-9bef-56b4e18d27b1.jpeg)
* ![Paso 1.2](https://user-images.githubusercontent.com/94185672/233879593-8d91d490-ec8e-4eff-bb82-bc14138a098f.jpeg)

## Paso 2
* ![Paso 2](https://user-images.githubusercontent.com/94185672/233879624-1fce6060-a5f0-42b8-925c-ed0d9bf9b492.jpeg)

## Paso 3
* ![Paso 3](https://user-images.githubusercontent.com/94185672/233879644-4b05d6d0-5210-4a9c-b770-a08eb46d181a.jpeg)

## Paso 4
* ![Paso 4.1](https://user-images.githubusercontent.com/94185672/233879665-1bcce6ac-0f13-46df-b513-3c4c019e6123.jpeg)
* ![Paso 4.2](https://user-images.githubusercontent.com/94185672/233879684-a706ff1a-638d-4a25-a66d-2ecb31ab856c.jpeg)

## Paso 5
* ![Paso 5.1](https://user-images.githubusercontent.com/94185672/233879698-9e72a154-f4d4-4716-a3ca-6487e4fe4a7e.jpeg)
* ![Paso 5.2](https://user-images.githubusercontent.com/94185672/233879701-ee8c2903-2b6d-4ea0-9312-838cee2d4853.jpeg)

## Paso 6
* ![Paso 6](https://user-images.githubusercontent.com/94185672/233879743-dbe2b479-d468-4860-ad0d-19a4b8d0c243.jpeg)

# Prompts de ChatGPT
## Prompt
Proponga un ejemplo o caso de estudio a partir del cual se debe diseñar una base de datos. Su ejemplo debe cumplir con las siguientes características:
El ejemplo es original, o adaptado de otra fuente. Los estudiantes deben especificar explícitamente si el ejemplo es original o adaptado. En el caso en que el ejemplo sea adaptado, los estudiantes deben hacer la referencia correspondiente y enlazar la fuente o incluir el documento fuente como anexo. La omisión de la referencia o anexo es considerado plagio.
El ejemplo contiene al menos tres entidades fundamentales, cada entidad con al menos tres atributos. Los atributos de las entidades deben representar valores que pueden ser números, cadenas, fechas o conjuntos de valores.
El ejemplo contiene al menos una entidad débil.
El ejemplo contiene al menos una entidad secundaria.
El ejemplo contiene al menos dos relaciones binarias, una relación con grado tres o mayor, y al menos una relación con atributos.
En el conjunto de relaciones, el ejemplo contiene al menos una relación con cardinalidad 1..1,  al menos una relación con cardinalidad N..N y al menos una relación con cardinalidad 1..N
El ejemplo muestra la participación de las entidades en una relación. 

Aquí le propongo un ejemplo de base de datos para una tienda en línea de ropa:

Este ejemplo es original.

Entidades fundamentales:

Cliente
Nombre (cadena)
Correo electrónico (cadena)
Dirección de envío (cadena)
Producto
Nombre (cadena)
Descripción (cadena)
Precio (número)
Pedido
ID de pedido (número)
Fecha de pedido (fecha)
Estado de pedido (conjunto de valores: "En proceso", "Enviado", "Entregado")
Entidad débil:

Detalle de pedido
ID de detalle de pedido (número)
Cantidad (número)
Subtotal (número)
Entidad secundaria:

Categoría de producto
Nombre (cadena)
Descripción (cadena)
Relaciones binarias:

Cliente realiza Pedido
Cardinalidad 1..N
Atributos: Ninguno
Pedido contiene Producto
Cardinalidad N..N
Atributos: Ninguno
Producto pertenece a Categoría de producto
Cardinalidad 1..N
Atributos: Ninguno
Relación con grado tres o mayor:

Pedido contiene Detalle de pedido que incluye Producto
Cardinalidad 1..N
Atributos: Ninguno
Participación de las entidades en una relación:

Cliente: Participa en la relación "Cliente realiza Pedido"
Producto: Participa en la relación "Pedido contiene Producto" y "Producto pertenece a Categoría de producto"
Pedido: Participa en la relación "Cliente realiza Pedido" y "Pedido contiene Detalle de pedido que incluye Producto"
Detalle de pedido: Participa en la relación "Pedido contiene Detalle de pedido que incluye Producto"
Esta base de datos permitiría a la tienda en línea de ropa llevar un registro de los pedidos realizados por los clientes, los productos comprados, las cantidades y precios, la categoría de cada producto, y la información de los clientes para poder hacer envíos a las direcciones correspondientes.





## Prompt
Dame un ejemplo de fantasía 
Aquí le propongo un ejemplo de base de datos para un juego de rol de fantasía:

Este ejemplo es original.

Entidades fundamentales:

Personaje
Nombre (cadena)
Raza (conjunto de valores: "Humano", "Elfo", "Enano", "Orco", etc.)
Clase (conjunto de valores: "Guerrero", "Mago", "Ladrón", "Clerigo", etc.)
Habilidad
Nombre (cadena)
Descripción (cadena)
Tipo (conjunto de valores: "Ofensiva", "Defensiva", "Curativa", "Mágica", etc.)
Objeto
Nombre (cadena)
Tipo (conjunto de valores: "Arma", "Armadura", "Poción", "Libro de hechizos", etc.)
Descripción (cadena)
Entidad débil:

Característica
Nombre (cadena)
Valor (número)
Entidad secundaria:

Monstruo
Nombre (cadena)
Descripción (cadena)
Relaciones binarias:

Personaje posee Objeto
Cardinalidad 0..N
Atributos: Ninguno
Personaje conoce Habilidad
Cardinalidad 0..N
Atributos: Ninguno
Personaje se enfrenta a Monstruo
Cardinalidad 1..N
Atributos: Ninguno
Relación con grado tres o mayor:

Personaje tiene Característica asociada a Raza y Clase
Cardinalidad 1..N
Atributos: Ninguno
Participación de las entidades en una relación:

Personaje: Participa en la relación "Personaje posee Objeto", "Personaje conoce Habilidad", "Personaje se enfrenta a Monstruo", y "Personaje tiene Característica asociada a Raza y Clase"
Habilidad: Participa en la relación "Personaje conoce Habilidad"
Objeto: Participa en la relación "Personaje posee Objeto"
Característica: Participa en la relación "Personaje tiene Característica asociada a Raza y Clase"
Monstruo: Participa en la relación "Personaje se enfrenta a Monstruo"
Esta base de datos permitiría a los jugadores de rol de fantasía llevar un registro de sus personajes, sus habilidades y objetos, sus características asociadas a su raza y clase, y los monstruos a los que se enfrentan en sus aventuras. Con esta información, el juego puede adaptarse y generar nuevos desafíos y misiones para los jugadores.





## Prompt
Que es una entidad secundaria
En el diseño de bases de datos, una entidad secundaria es una entidad que no tiene una relación directa con otra entidad principal en el modelo de datos. En lugar de eso, la entidad secundaria está conectada indirectamente a la entidad principal a través de una o más relaciones con otras entidades.

Por ejemplo, si estamos diseñando una base de datos para una biblioteca, podemos tener una entidad principal llamada "Libro" y una entidad secundaria llamada "Autor". En este caso, la entidad Autor no está directamente relacionada con la entidad Libro, sino que está conectada indirectamente a través de una relación con la entidad "Escritura", que representa la asociación entre el autor y el libro. La entidad Escritura es una entidad intermedia que tiene relaciones con ambas entidades principales.

En resumen, una entidad secundaria es una entidad que se conecta indirectamente con otra entidad principal a través de una o más relaciones con otras entidades.





## Prompt
Que es el grado de una relación
El grado de una relación en una base de datos es el número de entidades participantes en ella. En otras palabras, el grado de una relación se refiere al número de conjuntos de entidades que se relacionan en una sola relación.

Por ejemplo, si estamos diseñando una base de datos para una tienda, podemos tener una relación llamada "Venta" que conecta tres entidades principales: "Cliente", "Producto" y "Empleado". En este caso, la relación "Venta" tiene un grado de tres, ya que involucra tres entidades diferentes.

Otro ejemplo sería una relación de "Asignación" en una universidad, que conecta cuatro entidades principales: "Estudiante", "Curso", "Profesor" y "Aula". En este caso, la relación "Asignación" tiene un grado de cuatro, ya que involucra cuatro entidades diferentes.

En general, cuanto mayor sea el grado de una relación, mayor será la complejidad de la base de datos y su capacidad para modelar los datos de manera precisa y efectiva.





## Prompt

2 / 2

Dame un ejemplo de relacion de grado 3 para el problema del juego de rol anterior 
Supongamos que estamos diseñando una base de datos para un juego de rol en línea y queremos modelar la relación entre "Personaje", "Misión" y "Objetivo". En este caso, la relación sería de grado 3, ya que involucra tres entidades diferentes.

La relación podría llamarse "Participación" y se definiría de la siguiente manera:

"Personaje": entidad principal, que representa a los personajes de los jugadores.
"Misión": entidad principal, que representa las misiones que se pueden realizar en el juego.
"Objetivo": entidad secundaria, que representa los objetivos específicos que los personajes deben cumplir en una misión determinada.
La relación "Participación" tendría los siguientes atributos:

"Estado": un valor que indica si el personaje ha completado o no el objetivo de la misión.
"Recompensa": un valor que indica la recompensa que el personaje recibe por completar el objetivo.
La cardinalidad de la relación podría ser de la siguiente manera:

Un personaje puede tener muchas participaciones en diferentes misiones.
Una misión puede tener muchas participaciones de diferentes personajes.
Un objetivo solo puede pertenecer a una misión.
Con esta relación, podemos modelar eficazmente la participación de los personajes en diferentes misiones, y hacer un seguimiento de los objetivos que deben cumplir para completar la misión. Además, podemos usar la relación para determinar las recompensas que los personajes recibirán por completar los objetivos.





## Prompt
Descríbeme que atributos tendría Misión 
En el contexto de un juego de rol en línea, una entidad de "Misión" podría tener los siguientes atributos:

"ID": un identificador único para cada misión.
"Nombre": un nombre descriptivo de la misión.
"Descripción": una breve descripción de la misión.
"Recompensa": el valor o tipo de recompensa que se otorgará a los personajes que completen la misión.
"Nivel requerido": el nivel mínimo que deben tener los personajes para participar en la misión.
"Duración": la cantidad de tiempo que se requiere para completar la misión.
"Dificultad": una medida de la dificultad de la misión, que puede estar relacionada con la cantidad y fuerza de los enemigos, o la complejidad de los objetivos.
"Requisitos previos": una lista de otros objetivos o misiones que deben ser completados antes de poder acceder a la misión actual.
"Lugar": el lugar físico donde se lleva a cabo la misión.
Estos atributos son solo un ejemplo, y en realidad pueden variar dependiendo del tipo de juego de rol y la complejidad de las misiones. En general, los atributos de una entidad de "Misión" deben ser lo suficientemente descriptivos y detallados como para permitir a los jugadores comprender completamente la naturaleza de la misión y sus objetivos, y tomar decisiones informadas sobre si participar en ella o no.





## Prompt
Descríbeme objetivo 
En el contexto de un juego de rol en línea, un "Objetivo" es una tarea específica que los personajes deben cumplir en el transcurso de una misión para poder completarla exitosamente. Cada objetivo está diseñado para ser un paso importante en el progreso general de la misión y, por lo general, es necesario para completar la misión en sí.

Los atributos de un "Objetivo" podrían incluir:

"ID": un identificador único para cada objetivo.
"Nombre": un nombre descriptivo del objetivo.
"Descripción": una breve descripción del objetivo.
"Recompensa": el valor o tipo de recompensa que se otorgará al personaje que complete el objetivo.
"Dificultad": una medida de la dificultad del objetivo, que puede estar relacionada con la cantidad y fuerza de los enemigos, o la complejidad de las tareas requeridas para completar el objetivo.
"Progreso": una medida del progreso actual del personaje hacia la finalización del objetivo.
"Estado": un valor que indica si el objetivo ha sido completado o no.
"Requisitos previos": una lista de otros objetivos que deben ser completados antes de que este objetivo pueda ser alcanzado.
"Tiempo límite": la cantidad de tiempo que el jugador tiene para completar el objetivo.
Cada objetivo debe estar diseñado para ser desafiante y requerir un conjunto específico de habilidades y conocimientos por parte del personaje para completarlo. Los atributos de un "Objetivo" deben ser lo suficientemente detallados como para permitir a los jugadores entender completamente qué se espera de ellos y qué necesitan hacer para alcanzar el objetivo. Además, los objetivos deben estar diseñados para fomentar la colaboración y el trabajo en equipo entre los personajes, y para crear una experiencia emocionante y gratificante para los jugadores.





## Prompt

3 / 3

Dime que atributos deberían tener Misión y Objetivo para que la relación de grado 3 Mision, Objetivo, Personaje antes mencionada y que tenga sentido
Para que la relación de grado 3 "Misión, Objetivo, Personaje" tenga sentido, los atributos de las entidades "Misión", "Objetivo" y "Personaje" deben estar relacionados entre sí de una manera coherente. Aquí hay algunos ejemplos de los atributos que podrían tener cada entidad para que la relación tenga sentido:

Misión:

"ID": un identificador único para cada misión.
"Nombre": un nombre descriptivo de la misión.
"Descripción": una descripción detallada de la misión, incluyendo información sobre el entorno, objetivos y enemigos.
"Dificultad": una medida de la dificultad de la misión, que puede estar relacionada con el nivel de los enemigos y la cantidad de objetivos a completar.
"Recompensa": el valor o tipo de recompensa que se otorgará al personaje una vez que se complete la misión.
Objetivo:

"ID": un identificador único para cada objetivo.
"Nombre": un nombre descriptivo del objetivo.
"Descripción": una breve descripción del objetivo.
"Dificultad": una medida de la dificultad del objetivo, que puede estar relacionada con la cantidad de enemigos a vencer o la complejidad de las tareas requeridas para completar el objetivo.
"Progreso": una medida del progreso actual del personaje hacia la finalización del objetivo.
"Estado": un valor que indica si el objetivo ha sido completado o no.
Personaje:

"ID": un identificador único para cada personaje.
"Nombre": un nombre descriptivo del personaje.
"Clase": la clase del personaje (por ejemplo, guerrero, mago, ladrón, etc.).
"Nivel": el nivel actual del personaje.
"Experiencia": la cantidad de experiencia que el personaje ha acumulado.
"Equipo": una lista de objetos que el personaje tiene en su inventario.
Con esta configuración, cada "Misión" puede tener múltiples "Objetivos", y cada "Objetivo" puede estar asignado a múltiples "Personajes". De esta manera, cada "Personaje" puede trabajar en varios "Objetivos" para completar una "Misión" en particular. Por ejemplo, un "Personaje" puede tener el objetivo de encontrar una llave, mientras que otro "Personaje" puede tener el objetivo de derrotar a un jefe de nivel en particular. Ambos objetivos deben ser completados para que la misión sea exitosa.





## Prompt
Dame una relación debil para el ejemplo
En el ejemplo de base de datos del juego de rol, una posible entidad débil podría ser "Habilidad", ya que su existencia depende de la existencia de una entidad fuerte, como "Personaje", que posee y utiliza dicha habilidad. Para implementar esta relación débil, la entidad "Habilidad" tendría como atributos:

ID: un identificador único para cada habilidad.
Nombre: el nombre de la habilidad (por ejemplo, "ataque con espada", "lanzar hechizo de fuego", etc.).
Descripción: una descripción breve de la habilidad.
Nivel: el nivel mínimo requerido para aprender o utilizar la habilidad.
Además, la entidad "Personaje" tendría un atributo adicional llamado "ID_Habilidad" que actúa como clave foránea, lo que significa que está referenciando el identificador único de la habilidad que posee el personaje.

De esta manera, cada "Personaje" podría tener varias habilidades, y cada "Habilidad" estaría asociada con un "Personaje" en particular. Si se elimina un "Personaje", todas las habilidades asociadas con ese personaje también se eliminarían automáticamente debido a la relación débil.





## Prompt
Dime otro
Otro ejemplo de relación débil para la base de datos del juego de rol podría ser la relación entre "Inventario" y "Objeto". La entidad "Inventario" representa el conjunto de objetos que posee un personaje, y la entidad "Objeto" representa los objetos individuales que pueden ser poseídos por un personaje. En este caso, la entidad "Inventario" sería la entidad débil, ya que su existencia depende de la existencia de un "Personaje" que lo posee.

Los atributos de la entidad "Inventario" podrían ser:

ID: un identificador único para cada inventario.
Capacidad: la capacidad total del inventario, es decir, la cantidad máxima de objetos que puede contener.
ID_Personaje: la clave foránea que referencia al personaje que posee el inventario.
Por su parte, los atributos de la entidad "Objeto" podrían ser:

ID: un identificador único para cada objeto.
Nombre: el nombre del objeto (por ejemplo, "poción de salud", "espada mágica", etc.).
Tipo: una categoría que describe el tipo de objeto (por ejemplo, "arma", "consumible", etc.).
Cantidad: la cantidad de unidades del objeto que posee el personaje.
ID_Inventario: la clave foránea que referencia al inventario que contiene el objeto.
De esta manera, cada "Inventario" estaría asociado con un "Personaje" en particular, y cada "Objeto" estaría asociado con un "Inventario" en particular. Al eliminar un "Personaje", se eliminaría automáticamente su "Inventario" y todos los objetos asociados con él.





## Prompt
Que es un atributo derivado en notación de chen
En la notación de Chen, un atributo derivado es aquel que se puede calcular a partir de otros atributos de la entidad, pero que no se almacena en la base de datos. En otras palabras, es un valor que se puede obtener mediante una operación o cálculo basado en los valores de otros atributos de la entidad.

Por ejemplo, en una entidad "Persona" que tenga los atributos "Fecha de nacimiento" y "Edad", la edad es un atributo derivado ya que se puede calcular a partir de la fecha de nacimiento, pero no es necesario almacenarla en la base de datos. En lugar de almacenar la edad, se puede calcular dinámicamente cada vez que sea necesario.

En la notación de Chen, se denota un atributo derivado con un círculo abierto en lugar de un óvalo cerrado como se utiliza para los atributos regulares. El círculo abierto indica que el atributo no se almacena en la base de datos, sino que se deriva de otros atributos.





## Prompt
Dime una relación 1 a 1 para nuestro juego
Una posible relación 1 a 1 para el juego de rol podría ser la relación entre "Personaje" y "Habilidad Especial". En este caso, cada personaje tendría asociada una única habilidad especial que le otorga ciertas ventajas o habilidades únicas en el juego.

Los atributos de la entidad "Personaje" podrían ser:

ID: un identificador único para cada personaje.
Nombre: el nombre del personaje.
Nivel: el nivel del personaje dentro del juego.
Raza: la raza del personaje (humano, elfo, enano, etc.).
Clase: la clase del personaje (guerrero, mago, ladrón, etc.).
Por su parte, los atributos de la entidad "Habilidad Especial" podrían ser:

ID: un identificador único para cada habilidad especial.
Nombre: el nombre de la habilidad especial.
Descripción: una descripción de los efectos de la habilidad especial.
ID_Personaje: la clave foránea que referencia al personaje que posee la habilidad especial.
En este caso, la relación sería 1 a 1 ya que cada "Personaje" tendría asociada una única "Habilidad Especial" y cada "Habilidad Especial" estaría asociada con un único "Personaje". Al eliminar un "Personaje", se eliminaría automáticamente su "Habilidad Especial" asociada.





## Prompt
Dime otra
Otra posible relación 1 a 1 para el juego de rol podría ser la relación entre "Personaje" y "Arma Principal". En este caso, cada personaje tendría asociada una única arma principal que utilizaría en combate.

Los atributos de la entidad "Personaje" podrían ser los mismos que mencioné en mi respuesta anterior:

ID: un identificador único para cada personaje.
Nombre: el nombre del personaje.
Nivel: el nivel del personaje dentro del juego.
Raza: la raza del personaje (humano, elfo, enano, etc.).
Clase: la clase del personaje (guerrero, mago, ladrón, etc.).
Por su parte, los atributos de la entidad "Arma Principal" podrían ser:

ID: un identificador único para cada arma principal.
Nombre: el nombre del arma.
Tipo: el tipo de arma (espada, hacha, arco, etc.).
Daño: la cantidad de daño que inflige el arma.
ID_Personaje: la clave foránea que referencia al personaje que utiliza el arma.
En este caso, la relación sería 1 a 1 ya que cada "Personaje" tendría asociada una única "Arma Principal" y cada "Arma Principal" estaría asociada con un único "Personaje". Al eliminar un "Personaje", se eliminaría automáticamente su "Arma Principal" asociada.





## Prompt
dime otra
Otra relación 1 a 1 posible para el juego de rol podría ser la relación entre "Personaje" y "Mascota". En este caso, cada personaje tendría una única mascota que lo acompañaría en sus aventuras.

Los atributos de la entidad "Personaje" podrían ser los mismos que mencioné en mis respuestas anteriores:

ID: un identificador único para cada personaje.
Nombre: el nombre del personaje.
Nivel: el nivel del personaje dentro del juego.
Raza: la raza del personaje (humano, elfo, enano, etc.).
Clase: la clase del personaje (guerrero, mago, ladrón, etc.).
Por su parte, los atributos de la entidad "Mascota" podrían ser:

ID: un identificador único para cada mascota.
Nombre: el nombre de la mascota.
Tipo: el tipo de mascota (perro, gato, ave, etc.).
Habilidad especial: una habilidad especial que tenga la mascota.
ID_Personaje: la clave foránea que referencia al personaje que posee la mascota.
En este caso, la relación sería 1 a 1 ya que cada "Personaje" tendría asociada una única "Mascota" y cada "Mascota" estaría asociada con un único "Personaje". Al eliminar un "Personaje", se eliminaría automáticamente su "Mascota" asociada.





## Prompt
dime otra
Otra posible relación 1 a 1 para el juego de rol podría ser la relación entre "Personaje" y "Arma principal". En este caso, cada personaje tendría una única arma principal que utilizaría en sus combates.

Los atributos de la entidad "Personaje" serían los mismos que mencioné anteriormente:

ID: un identificador único para cada personaje.
Nombre: el nombre del personaje.
Nivel: el nivel del personaje dentro del juego.
Raza: la raza del personaje (humano, elfo, enano, etc.).
Clase: la clase del personaje (guerrero, mago, ladrón, etc.).
Por su parte, los atributos de la entidad "Arma principal" podrían ser:

ID: un identificador único para cada arma.
Nombre: el nombre del arma.
Tipo: el tipo de arma (espada, hacha, arco, etc.).
Daño: el daño que hace el arma.
ID_Personaje: la clave foránea que referencia al personaje que posee el arma principal.
En este caso, la relación sería 1 a 1 ya que cada "Personaje" tendría asociada una única "Arma principal" y cada "Arma principal" estaría asociada con un único "Personaje". Al eliminar un "Personaje", se eliminaría automáticamente su "Arma principal" asociada.





## Prompt
DIme una relacion binaria 
Una posible relación binaria para el ejemplo del juego de rol podría ser la relación entre "Personaje" y "Habilidad". En esta relación, cada "Personaje" tendría varias "Habilidades" que puede utilizar en el juego y cada "Habilidad" estaría asociada con uno o varios "Personajes".

Los atributos de la entidad "Personaje" serían los mismos que mencioné anteriormente:

ID: un identificador único para cada personaje.
Nombre: el nombre del personaje.
Nivel: el nivel del personaje dentro del juego.
Raza: la raza del personaje (humano, elfo, enano, etc.).
Clase: la clase del personaje (guerrero, mago, ladrón, etc.).
Por su parte, los atributos de la entidad "Habilidad" podrían ser:

ID: un identificador único para cada habilidad.
Nombre: el nombre de la habilidad.
Tipo: el tipo de habilidad (ataque, defensa, curación, etc.).
Coste: el coste en puntos de habilidad de utilizar la habilidad.
Descripción: una breve descripción de lo que hace la habilidad.
Para establecer la relación, se podría agregar un atributo a la entidad "Personaje" llamado "ID_Habilidad" que sirva como clave foránea para identificar las habilidades que posee cada personaje. De esta forma, se establecería la relación binaria entre "Personaje" y "Habilidad".

Cabe destacar que esta relación podría ser de muchos a muchos, ya que cada "Personaje" puede tener varias "Habilidades" y cada "Habilidad" puede ser utilizada por varios "Personajes". Para modelar una relación muchos a muchos, se podría utilizar una entidad intermedia que represente la relación entre "Personaje" y "Habilidad".





## Prompt

2 / 2

A partir de ahora cada vez que te pida generar una DDL lo harás para OracleLive
Entendido, a partir de ahora generaré la DDL para Oracle Live.





## Prompt
Genera la DDL de Personaje	
Nombre	IdPersonaje	IdRazaPersonaje
A continuación te muestro la DDL de la tabla "Personaje" en Oracle Live, con los atributos "Nombre", "IdPersonaje" e "IdRazaPersonaje":

sql
Copy code
CREATE TABLE Personaje (
  Nombre VARCHAR2(50) NOT NULL,
  IdPersonaje NUMBER(10) NOT NULL,
  IdRazaPersonaje NUMBER(10) NOT NULL,
  CONSTRAINT PK_Personaje PRIMARY KEY (IdPersonaje),
  CONSTRAINT FK_Personaje_Raza FOREIGN KEY (IdRazaPersonaje) REFERENCES Raza (IdRaza)
);
En esta DDL se definen los siguientes atributos para la entidad "Personaje":

Nombre: un atributo de tipo VARCHAR2 que guarda el nombre del personaje.
IdPersonaje: un atributo de tipo NUMBER que sirve como clave primaria de la tabla y permite identificar de forma única a cada personaje.
IdRazaPersonaje: un atributo de tipo NUMBER que sirve como clave foránea y permite relacionar al personaje con su raza correspondiente.
Además, se definen dos restricciones en la tabla:

PK_Personaje: es una restricción PRIMARY KEY que indica que la columna "IdPersonaje" es la clave primaria de la tabla y, por lo tanto, no puede tener valores nulos y debe ser única para cada registro.
FK_Personaje_Raza: es una restricción FOREIGN KEY que indica que la columna "IdRazaPersonaje" es una clave foránea que hace referencia a la tabla "Raza" y, por lo tanto, solo puede contener valores que existan en la tabla "Raza" y no pueden ser nulos.




## Prompt
Genera la DDL de Habilidad			
Nombre	Descripción	Tipo	IdHabilidad
Aquí te muestro la DDL de la tabla "Habilidad" en Oracle Live, con los atributos "Nombre", "Descripción", "Tipo" e "IdHabilidad":

sql
Copy code
CREATE TABLE Habilidad (
  Nombre VARCHAR2(50) NOT NULL,
  Descripción VARCHAR2(200),
  Tipo VARCHAR2(20) NOT NULL,
  IdHabilidad NUMBER(10) NOT NULL,
  CONSTRAINT PK_Habilidad PRIMARY KEY (IdHabilidad)
);
En esta DDL se definen los siguientes atributos para la entidad "Habilidad":

Nombre: un atributo de tipo VARCHAR2 que guarda el nombre de la habilidad.
Descripción: un atributo de tipo VARCHAR2 que guarda una descripción detallada de la habilidad.
Tipo: un atributo de tipo VARCHAR2 que indica el tipo de la habilidad (por ejemplo, ofensiva, defensiva, mágica, etc.).
IdHabilidad: un atributo de tipo NUMBER que sirve como clave primaria de la tabla y permite identificar de forma única a cada habilidad.
Además, se define una restricción en la tabla:

PK_Habilidad: es una restricción PRIMARY KEY que indica que la columna "IdHabilidad" es la clave primaria de la tabla y, por lo tanto, no puede tener valores nulos y debe ser única para cada registro.




## Prompt
Genera la DDL de Monstruo				
Idmonstruo	Descripción	Nombre	Nivel	IdRazaMonstruo
Aquí te muestro la DDL de la tabla "Monstruo" en Oracle Live, con los atributos "IdMonstruo", "Descripción", "Nombre", "Nivel" e "IdRazaMonstruo":

sql
Copy code
CREATE TABLE Monstruo (
  IdMonstruo NUMBER(10) NOT NULL,
  Descripción VARCHAR2(200),
  Nombre VARCHAR2(50) NOT NULL,
  Nivel NUMBER(3) NOT NULL,
  IdRazaMonstruo NUMBER(10) NOT NULL,
  CONSTRAINT PK_Monstruo PRIMARY KEY (IdMonstruo),
  CONSTRAINT FK_RazaMonstruo FOREIGN KEY (IdRazaMonstruo) REFERENCES RazaMonstruo(IdRazaMonstruo)
);
En esta DDL se definen los siguientes atributos para la entidad "Monstruo":

IdMonstruo: un atributo de tipo NUMBER que sirve como clave primaria de la tabla y permite identificar de forma única a cada monstruo.
Descripción: un atributo de tipo VARCHAR2 que guarda una descripción detallada del monstruo.
Nombre: un atributo de tipo VARCHAR2 que guarda el nombre del monstruo.
Nivel: un atributo de tipo NUMBER que indica el nivel de dificultad del monstruo.
IdRazaMonstruo: un atributo de tipo NUMBER que sirve como clave foránea de la tabla "RazaMonstruo" y permite relacionar a cada monstruo con su raza correspondiente.
Además, se definen dos restricciones en la tabla:

PK_Monstruo: es una restricción PRIMARY KEY que indica que la columna "IdMonstruo" es la clave primaria de la tabla y, por lo tanto, no puede tener valores nulos y debe ser única para cada registro.
FK_RazaMonstruo: es una restricción FOREIGN KEY que indica que la columna "IdRazaMonstruo" es una clave foránea que hace referencia a la tabla "RazaMonstruo", lo que garantiza que solo se puedan agregar razas de monstruos existentes en la tabla "RazaMonstruo".




## Prompt
Genera la DDL de Mision		
Nombre	IdMision	Recompensa
Aquí te dejo la DDL de la entidad Mision en OracleLive:

SQL
Copy code
CREATE TABLE Mision (
    IdMision NUMBER(10) PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL,
    Recompensa VARCHAR2(100) NOT NULL
);
La entidad Mision tiene tres atributos:

IdMision: identificador numérico único para cada misión.
Nombre: nombre de la misión.
Recompensa: descripción de la recompensa que se obtiene al completar la misión.
El atributo IdMision es la clave primaria de la tabla, lo que garantiza que cada misión tenga un identificador único.





## Prompt
Genera la DDL de Objetivos					
Estado	Progreso	Dificultad	Descripción	Nombre	IdObjetivo
Aquí te dejo la DDL de la entidad Objetivos en OracleLive:

SQL
Copy code
CREATE TABLE Objetivos (
    IdObjetivo NUMBER(10) PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL,
    Descripcion VARCHAR2(100) NOT NULL,
    Dificultad NUMBER(2) NOT NULL,
    Progreso NUMBER(3) NOT NULL,
    Estado VARCHAR2(20) NOT NULL
);
La entidad Objetivos tiene seis atributos:

IdObjetivo: identificador numérico único para cada objetivo.
Nombre: nombre del objetivo.
Descripcion: descripción detallada del objetivo.
Dificultad: valor numérico que representa la dificultad del objetivo en una escala del 1 al 10.
Progreso: valor numérico que representa el porcentaje de progreso del objetivo (0 al 100).
Estado: estado actual del objetivo (por ejemplo, "en progreso", "completado", "fallido").
El atributo IdObjetivo es la clave primaria de la tabla, lo que garantiza que cada objetivo tenga un identificador único.





## Prompt
Genera la DDL de Clase	
Nombre	IdClase
Aquí te dejo la DDL de la entidad Clase en OracleLive:

SQL
Copy code
CREATE TABLE Clase (
    IdClase NUMBER(10) PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL
);
La entidad Clase tiene dos atributos:

IdClase: identificador numérico único para cada clase.
Nombre: nombre de la clase.
El atributo IdClase es la clave primaria de la tabla, lo que garantiza que cada clase tenga un identificador único.





## Prompt
Genera la DDL de RazaPersonaje	
Nombre	IdRazaPersonaje
Aquí te dejo la DDL de la entidad RazaPersonaje en OracleLive:

SQL
Copy code
CREATE TABLE RazaPersonaje (
    IdRazaPersonaje NUMBER(10) PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL
);
La entidad RazaPersonaje tiene dos atributos:

IdRazaPersonaje: identificador numérico único para cada raza de personaje.
Nombre: nombre de la raza.
El atributo IdRazaPersonaje es la clave primaria de la tabla, lo que garantiza que cada raza tenga un identificador único.





## Prompt
Genera la DDL de RazaMonstruo	
Nombre	IdRazaMonstruo
Aquí te dejo la DDL de la entidad RazaMonstruo en OracleLive:

SQL
Copy code
CREATE TABLE RazaMonstruo (
    IdRazaMonstruo NUMBER(10) PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL
);
La entidad RazaMonstruo tiene dos atributos:

IdRazaMonstruo: identificador numérico único para cada raza de monstruo.
Nombre: nombre de la raza.
El atributo IdRazaMonstruo es la clave primaria de la tabla, lo que garantiza que cada raza tenga un identificador único.





## Prompt
Genera la DDL de Caracteristica			
Nombre	Tipo	Valor	IdCaracteristica
Aquí te dejo la DDL de la entidad Caracteristica en OracleLive:

SQL
Copy code
CREATE TABLE Caracteristica (
    IdCaracteristica NUMBER(10) PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL,
    Tipo VARCHAR2(50) NOT NULL,
    Valor NUMBER(10) NOT NULL
);
La entidad Caracteristica tiene cuatro atributos:

IdCaracteristica: identificador numérico único para cada característica.
Nombre: nombre de la característica.
Tipo: tipo de dato de la característica.
Valor: valor numérico de la característica.
El atributo IdCaracteristica es la clave primaria de la tabla, lo que garantiza que cada característica tenga un identificador único.





## Prompt
Genera la DDL Mascota				
IdMascota	Nombre	Tipo	Nivel	IdPersonaje
Aquí te dejo la DDL de la entidad Mascota en OracleLive:

SQL
Copy code
CREATE TABLE Mascota (
    IdMascota NUMBER(10) PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL,
    Tipo VARCHAR2(50) NOT NULL,
    Nivel NUMBER(10) NOT NULL,
    IdPersonaje NUMBER(10) NOT NULL,
    CONSTRAINT fk_mascota_personaje FOREIGN KEY (IdPersonaje)
        REFERENCES Personaje(IdPersonaje)
);
La entidad Mascota tiene cinco atributos:

IdMascota: identificador numérico único para cada mascota.
Nombre: nombre de la mascota.
Tipo: tipo de la mascota.
Nivel: nivel de la mascota.
IdPersonaje: identificador numérico del personaje que posee la mascota.
El atributo IdMascota es la clave primaria de la tabla. Además, la tabla tiene una clave foránea (fk_mascota_personaje) que referencia al IdPersonaje de la tabla Personaje, lo que asegura que una mascota siempre pertenece a un personaje existente.





## Prompt
Genera la DDL Objeto				
IdPersonaje	Nombre	Descripcion	Tipo	Cantidad
Aquí te presento la DDL para crear la tabla "Objeto" en OracleLive, según los atributos que indicaste:

scss
Copy code
CREATE TABLE Objeto (
  IdPersonaje NUMBER,
  Nombre VARCHAR2(50),
  Descripcion VARCHAR2(200),
  Tipo VARCHAR2(20),
  Cantidad NUMBER,
  CONSTRAINT pk_Objeto PRIMARY KEY (IdPersonaje, Nombre),
  CONSTRAINT fk_Objeto_Personaje FOREIGN KEY (IdPersonaje) REFERENCES Personaje(IdPersonaje)
);
La tabla "Objeto" tiene como atributos a "IdPersonaje", "Nombre", "Descripcion", "Tipo" y "Cantidad". La combinación de "IdPersonaje" y "Nombre" forma la clave primaria de la tabla. Además, "IdPersonaje" es una clave foránea que referencia a la tabla "Personaje".





## Prompt
Genera la DDL PersonajeClases		
IdPersonaje	IdClase	Nivel

2 / 2

A continuación te presento la DDL para la tabla "PersonajeClases" en OracleLive, con los atributos "IdPersonaje", "IdClase" y "Nivel":

SQL
Copy code
CREATE TABLE PersonajeClases (
    IdPersonaje INT,
    IdClase INT,
    Nivel INT,
    CONSTRAINT PK_PersonajeClases PRIMARY KEY (IdPersonaje, IdClase),
    CONSTRAINT FK_PersonajeClases_Personaje FOREIGN KEY (IdPersonaje) REFERENCES Personaje(IdPersonaje),
    CONSTRAINT FK_PersonajeClases_Clase FOREIGN KEY (IdClase) REFERENCES Clase(IdClase)
);
En esta tabla se establece la relación entre un personaje y las clases que puede tener, incluyendo el nivel en que se encuentra en cada una de ellas. La clave primaria está conformada por los atributos "IdPersonaje" y "IdClase", y se han definido dos restricciones de clave foránea, una para cada atributo, que referencia a las tablas "Personaje" y "Clase", respectivamente.





## Prompt
Genera la DDL CaracteristicasClase	
IdClase	IdCaracteristica
sql
Copy code
CREATE TABLE CaracteristicasClase (
  IdClase INT,
  IdCaracteristica INT,
  PRIMARY KEY (IdClase, IdCaracteristica),
  FOREIGN KEY (IdClase) REFERENCES Clase(IdClase),
  FOREIGN KEY (IdCaracteristica) REFERENCES Caracteristica(IdCaracteristica)
);




## Prompt

2 / 2

Genera la DDL de CaracteristicasRazaPersonaje	
IdRazaPersonaje,IdCaracteristica
Aquí está la DDL de la tabla CaracteristicasRazaPersonaje para OracleLive:

scss
Copy code
CREATE TABLE CaracteristicasRazaPersonaje (
  IdRazaPersonaje NUMBER,
  IdCaracteristica NUMBER,
  PRIMARY KEY (IdRazaPersonaje, IdCaracteristica),
  FOREIGN KEY (IdRazaPersonaje) REFERENCES RazaPersonaje(IdRazaPersonaje),
  FOREIGN KEY (IdCaracteristica) REFERENCES Caracteristica(IdCaracteristica)
);
Esta tabla establece la relación entre las entidades RazaPersonaje y Caracteristica a través de una relación de muchos a muchos.





## Prompt
Genera la DDL de CaracteristicasRazaMonstruo	
IdRazaMonstruo	IdCaracteristica
Aquí está la DDL para la tabla de CaracteristicasRazaMonstruo en OracleLive:

sql
Copy code
CREATE TABLE CaracteristicasRazaMonstruo (
  IdRazaMonstruo INT,
  IdCaracteristica INT,
  PRIMARY KEY (IdRazaMonstruo, IdCaracteristica),
  FOREIGN KEY (IdRazaMonstruo) REFERENCES RazaMonstruo(IdRazaMonstruo),
  FOREIGN KEY (IdCaracteristica) REFERENCES Caracteristica(IdCaracteristica)
);




## Prompt
Genera la DDL de ParsonajeHabilidad		
IdPersonaje	IdHabilidad	Nivel
Aquí está la DDL para la tabla PersonajeHabilidad:

sql
Copy code
CREATE TABLE PersonajeHabilidad (
  IdPersonaje  INT NOT NULL,
  IdHabilidad  INT NOT NULL,
  Nivel        INT,
  CONSTRAINT PK_PersonajeHabilidad PRIMARY KEY (IdPersonaje, IdHabilidad),
  CONSTRAINT FK_PersonajeHabilidad_Personaje FOREIGN KEY (IdPersonaje)
    REFERENCES Personaje(IdPersonaje),
  CONSTRAINT FK_PersonajeHabilidad_Habilidad FOREIGN KEY (IdHabilidad)
    REFERENCES Habilidad(IdHabilidad)
);
Esta tabla relaciona la tabla Personaje con la tabla Habilidad a través de la relación de muchos a muchos que existe entre ellas. La tabla tiene dos columnas de clave externa que apuntan a las claves primarias de las tablas Personaje y Habilidad, respectivamente, y una columna adicional llamada Nivel que indica el nivel de habilidad del personaje en la habilidad correspondiente. La combinación de las columnas IdPersonaje e IdHabilidad es la clave primaria de la tabla.





## Prompt
Genera la DDL de MonstruoHabilidad		
IdMonstruo	IdHabilidad	Nivel
Aquí tienes la DDL para la tabla MonstruoHabilidad:

sql
Copy code
CREATE TABLE MonstruoHabilidad (
    IdMonstruo NUMBER NOT NULL,
    IdHabilidad NUMBER NOT NULL,
    Nivel NUMBER NOT NULL,
    CONSTRAINT PK_MonstruoHabilidad PRIMARY KEY (IdMonstruo, IdHabilidad),
    CONSTRAINT FK_MonstruoHabilidad_Monstruo FOREIGN KEY (IdMonstruo)
        REFERENCES Monstruo(IdMonstruo),
    CONSTRAINT FK_MonstruoHabilidad_Habilidad FOREIGN KEY (IdHabilidad)
        REFERENCES Habilidad(IdHabilidad)
);
Esta tabla establece una relación entre los monstruos y las habilidades que tienen, indicando el nivel de dominio que tienen los monstruos sobre cada habilidad. La clave primaria está compuesta por las columnas IdMonstruo y IdHabilidad, y hay dos claves foráneas que se refieren a las tablas Monstruo y Habilidad.





## Prompt
Genera la DDL de PersonajeMonstruos		
IdPersonaje	IdMonstruo	Cantidad

2 / 2

Here's the DDL for the "PersonajeMonstruos" table in OracleLive:

sql
Copy code
CREATE TABLE PersonajeMonstruos (
    IdPersonaje NUMBER,
    IdMonstruo NUMBER,
    Cantidad NUMBER,
    CONSTRAINT pk_PersonajeMonstruos PRIMARY KEY (IdPersonaje, IdMonstruo),
    CONSTRAINT fk_PersonajeMonstruos_Personaje FOREIGN KEY (IdPersonaje) REFERENCES Personaje (IdPersonaje),
    CONSTRAINT fk_PersonajeMonstruos_Monstruo FOREIGN KEY (IdMonstruo) REFERENCES Monstruo (IdMonstruo)
);
Note that this table has a composite primary key made up of the "IdPersonaje" and "IdMonstruo" columns. It also has foreign key constraints that reference the "Personaje" and "Monstruo" tables based on their respective primary key columns.





## Prompt
Genera la DDL de RealizarMision			
IdPersonaje	IdMision	IdObjetivo	FechaRealizacion
Aquí tienes la DDL para la tabla "RealizarMision" en OracleLive:

sql
Copy code
CREATE TABLE RealizarMision (
  IdPersonaje INT NOT NULL,
  IdMision INT NOT NULL,
  IdObjetivo INT NOT NULL,
  FechaRealizacion DATE,
  PRIMARY KEY (IdPersonaje, IdMision, IdObjetivo),
  FOREIGN KEY (IdPersonaje) REFERENCES Personaje(IdPersonaje),
  FOREIGN KEY (IdMision) REFERENCES Mision(IdMision),
  FOREIGN KEY (IdObjetivo) REFERENCES Objetivos(IdObjetivo)
);
En esta tabla se registrará el progreso de los personajes en las misiones, relacionando la información del personaje, la misión, el objetivo de la misión y la fecha en que se realizó.





## Prompt
Crea 20 inserts para RazaPersonaje
Aquí te dejo 20 inserts de ejemplo para la tabla RazaPersonaje:

sql
Copy code

INSERT INTO RazaPersonaje (Nombre, IdRazaPersonaje) VALUES ('Humano', 1);

INSERT INTO RazaPersonaje (Nombre, IdRazaPersonaje) VALUES ('Elfo', 2);

INSERT INTO RazaPersonaje (Nombre, IdRazaPersonaje) VALUES ('Enano', 3);

INSERT INTO RazaPersonaje (Nombre, IdRazaPersonaje) VALUES ('Orc', 4);

INSERT INTO RazaPersonaje (Nombre, IdRazaPersonaje) VALUES ('Gnomo', 5);

INSERT INTO RazaPersonaje (Nombre, IdRazaPersonaje) VALUES ('Mediano', 6);

INSERT INTO RazaPersonaje (Nombre, IdRazaPersonaje) VALUES ('Semiorco', 7);

INSERT INTO RazaPersonaje (Nombre, IdRazaPersonaje) VALUES ('Humanoide', 8);

INSERT INTO RazaPersonaje (Nombre, IdRazaPersonaje) VALUES ('Dragonborn', 9);

INSERT INTO RazaPersonaje (Nombre, IdRazaPersonaje) VALUES ('Tiefling', 10);

INSERT INTO RazaPersonaje (Nombre, IdRazaPersonaje) VALUES ('Aasimar', 11);

INSERT INTO RazaPersonaje (Nombre, IdRazaPersonaje) VALUES ('Genasi', 12);

INSERT INTO RazaPersonaje (Nombre, IdRazaPersonaje) VALUES ('Firbolg', 13);

INSERT INTO RazaPersonaje (Nombre, IdRazaPersonaje) VALUES ('Goliath', 14);

INSERT INTO RazaPersonaje (Nombre, IdRazaPersonaje) VALUES ('Kenku', 15);

INSERT INTO RazaPersonaje (Nombre, IdRazaPersonaje) VALUES ('Kobold', 16);

INSERT INTO RazaPersonaje (Nombre, IdRazaPersonaje) VALUES ('Lizardfolk', 17);

INSERT INTO RazaPersonaje (Nombre, IdRazaPersonaje) VALUES ('Tabaxi', 18);

INSERT INTO RazaPersonaje (Nombre, IdRazaPersonaje) VALUES ('Tortle', 19);

INSERT INTO RazaPersonaje (Nombre, IdRazaPersonaje) VALUES ('Yuan-ti Pureblood', 20);
Ten en cuenta que son solo ejemplos y deberás adaptarlos a tu diseño de base de datos.





## Prompt

4 / 4

Crea 50 inserts para RazaPersonaje con ID

2 / 2

Aquí te dejo 50 inserts para la tabla RazaPersonaje con IDs:

arduino
Copy code

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (1, 'Humano');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (2, 'Elfo');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (3, 'Enano');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (4, 'Orco');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (5, 'Gnomo');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (6, 'Medusa');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (7, 'Sirena');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (8, 'Centauro');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (9, 'Vampiro');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (10, 'Licántropo');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (11, 'Naga');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (12, 'Minotauro');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (13, 'Gorgona');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (14, 'Hidra');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (15, 'Fauno');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (16, 'Troll');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (17, 'Ogro');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (18, 'Cíclope');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (19, 'Dragón');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (20, 'Fénix');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (21, 'Unicornio');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (22, 'Grifo');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (23, 'Harpía');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (24, 'Quimera');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (25, 'Kraken');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (26, 'Leviatán');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (27, 'Ángel');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (28, 'Demonio');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (29, 'Gárgola');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (30, 'Jabberwocky');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (31, 'Sátiro');

INSERT INTO RazaPersonaje (IdRaza




## Prompt

4 / 4

Considera que los inserts anteriores estan en una tabla, ahora genera otros 20 inserts
Para generar 20 nuevos inserts, necesitaríamos saber en qué tabla se encuentran los 50 inserts anteriores. Supongamos que están en la tabla "RazaPersonaje". Aquí te muestro 20 nuevos inserts para esta tabla:

sql
Copy code

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (51, 'Elfo oscuro');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (52, 'Humano nórdico');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (53, 'Orco salvaje');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (54, 'Elfo de la luz');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (55, 'Enano de las cavernas');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (56, 'Mediano astuto');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (57, 'Goblin veloz');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (58, 'Trol feroz');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (59, 'Elfo del bosque');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (60, 'Humano imperial');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (61, 'Orco guerrero');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (62, 'Gnomo ingenioso');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (63, 'Hombre rata sigiloso');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (64, 'Demonio corrupto');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (65, 'Ángel benévolo');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (66, 'Dragón mítico');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (67, 'Hada encantadora');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (68, 'Enano de montaña');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (69, 'Licántropo feroz');

INSERT INTO RazaPersonaje (IdRazaPersonaje, Nombre) VALUES (70, 'Gnomo del bosque');
Ten en cuenta que los IDs de estos inserts son continuación de los anteriores y no se deben repetir.





## Prompt
Crea 30 inserts para Personaje

2 / 2

Aquí te dejo 30 inserts para la tabla Personaje:

sql
Copy code

INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Gandalf', 1, 2);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Aragorn', 2, 3);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Legolas', 3, 3);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Gimli', 4, 1);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Frodo', 5, 4);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Sam', 6, 4);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Merry', 7, 4);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Pippin', 8, 4);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Boromir', 9, 3);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Saruman', 10, 2);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Sauron', 11, 5);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Gollum', 12, 6);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Tom Bombadil', 13, 7);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Arwen', 14, 3);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Éowyn', 15, 3);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Éomer', 16, 3);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Théoden', 17, 3);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Treebeard', 18, 7);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Haldir', 19, 3);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Galadriel', 20, 3);
Ten en cuenta que estos inserts son solo un ejemplo y que los valores pueden variar según las necesidades de tu aplicación.





## Prompt

5 / 5

Considera que los inserts anteriores estan en una tabla, ahora genera otros 30 inserts para la tabla Personaje:Nombre, IdPersonaje, IdRazaPersonaje 
con IdPersonaje a partir de 21
Aquí te dejo los 30 inserts para la tabla Personaje:

java
Copy code

INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Aria', 21, 1);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Liam', 22, 2);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Evelyn', 23, 3);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Jackson', 24, 4);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Ava', 25, 1);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Lucas', 26, 2);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Mia', 27, 3);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Logan', 28, 4);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Amelia', 29, 1);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Noah', 30, 2);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Charlotte', 31, 3);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Ethan', 32, 4);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Avery', 33, 1);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Oliver', 34, 2);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Sophia', 35, 3);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Aiden', 36, 4);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Harper', 37, 1);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Carter', 38, 2);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Chloe', 39, 3);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Lincoln', 40, 4);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Madison', 41, 1);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Mason', 42, 2);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Leah', 43, 3);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Grayson', 44, 4);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Aaliyah', 45, 1);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Cameron', 46, 2);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Abigail',




## Prompt
Considera que los inserts anteriores estan en una tabla, ahora genera otros 4 inserts para la tabla Personaje:Nombre, IdPersonaje, IdRazaPersonaje 
con IdPersonaje a partir de 47

2 / 2


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Liliana', 47, 5);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Cedric', 48, 3);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Evelyn', 49, 4);


INSERT INTO Personaje (Nombre, IdPersonaje, IdRazaPersonaje)
VALUES ('Oliver', 50, 2);





## Prompt

2 / 2

Crea 20 inserts para Mision
Aquí tienes 20 inserts para la tabla Mision:

sql
Copy code

INSERT INTO Mision (Nombre, IdMision, Recompensa) VALUES ('Salvar la aldea', 1, '500 monedas de oro');

INSERT INTO Mision (Nombre, IdMision, Recompensa) VALUES ('Recuperar el tesoro', 2, '500 monedas de plata');

INSERT INTO Mision (Nombre, IdMision, Recompensa) VALUES ('Derrotar al dragón', 3, '1000 monedas de oro');

INSERT INTO Mision (Nombre, IdMision, Recompensa) VALUES ('Proteger el reino', 4, '2000 monedas de oro');

INSERT INTO Mision (Nombre, IdMision, Recompensa) VALUES ('Encontrar la piedra filosofal', 5, '3000 monedas de oro');

INSERT INTO Mision (Nombre, IdMision, Recompensa) VALUES ('Rescatar a la princesa', 6, '1000 monedas de oro');

INSERT INTO Mision (Nombre, IdMision, Recompensa) VALUES ('Explorar la cueva', 7, '200 monedas de oro');

INSERT INTO Mision (Nombre, IdMision, Recompensa) VALUES ('Investigar la desaparición de los aldeanos', 8, '500 monedas de oro');

INSERT INTO Mision (Nombre, IdMision, Recompensa) VALUES ('Liberar a los esclavos', 9, '100 monedas de oro');

INSERT INTO Mision (Nombre, IdMision, Recompensa) VALUES ('Descubrir el origen de la maldición', 10, '1000 monedas de oro');

INSERT INTO Mision (Nombre, IdMision, Recompensa) VALUES ('Encontrar la llave del templo', 11, '500 monedas de plata');

INSERT INTO Mision (Nombre, IdMision, Recompensa) VALUES ('Eliminar a la banda de ladrones', 12, '500 monedas de oro');

INSERT INTO Mision (Nombre, IdMision, Recompensa) VALUES ('Descubrir la verdad detrás del asesinato', 13, '1000 monedas de oro');

INSERT INTO Mision (Nombre, IdMision, Recompensa) VALUES ('Conseguir el elixir de la eterna juventud', 14, '3000 monedas de oro');

INSERT INTO Mision (Nombre, IdMision, Recompensa) VALUES ('Probar tu valentía en la arena', 15, '100 monedas de oro');

INSERT INTO Mision (Nombre, IdMision, Recompensa) VALUES ('Negociar un acuerdo de paz', 16, '2000 monedas de oro');

INSERT INTO Mision (Nombre, IdMision, Recompensa) VALUES ('Buscar el amuleto del dios perdido', 17, '1000 monedas de plata');

INSERT INTO Mision (Nombre, IdMision, Recompensa) VALUES ('Restaurar el santuario de la diosa', 18, '500 monedas de oro');

INSERT INTO Mision (Nombre, IdMision, Recompensa) VALUES ('Cazar al lobo solitario', 19, '500 monedas de oro');

INSERT INTO Mision (Nombre, IdMision, Recompensa) VALUES ('Llevar el mensaje al rey', 20, '




## Prompt

2 / 2

Considera que los inserts anteriores estan en una tabla, ahora genera otros 20 inserts para la tabla Mision con IdMisiona partir de 20
Aquí te dejo los 20 inserts para la tabla Mision con IdMision a partir de 20:

sql
Copy code

INSERT INTO Mision (IdMision, Nombre, Recompensa)
VALUES (20, 'Recuperar el tesoro perdido', '1000 monedas');


INSERT INTO Mision (IdMision, Nombre, Recompensa)
VALUES (21, 'Salvar al rey', '5000 monedas');


INSERT INTO Mision (IdMision, Nombre, Recompensa)
VALUES (22, 'Recoger las gemas mágicas', '2000 monedas');


INSERT INTO Mision (IdMision, Nombre, Recompensa)
VALUES (23, 'Investigar el templo abandonado', '1500 monedas');


INSERT INTO Mision (IdMision, Nombre, Recompensa)
VALUES (24, 'Cazar al dragón rojo', '10000 monedas');


INSERT INTO Mision (IdMision, Nombre, Recompensa)
VALUES (25, 'Salvar a la princesa', '7000 monedas');


INSERT INTO Mision (IdMision, Nombre, Recompensa)
VALUES (26, 'Explorar el laberinto', '3000 monedas');


INSERT INTO Mision (IdMision, Nombre, Recompensa)
VALUES (27, 'Derrotar al ejército oscuro', '12000 monedas');


INSERT INTO Mision (IdMision, Nombre, Recompensa)
VALUES (28, 'Recuperar el amuleto perdido', '2500 monedas');


INSERT INTO Mision (IdMision, Nombre, Recompensa)
VALUES (29, 'Defender el castillo', '8000 monedas');


INSERT INTO Mision (IdMision, Nombre, Recompensa)
VALUES (30, 'Encontrar el antídoto', '4000 monedas');


INSERT INTO Mision (IdMision, Nombre, Recompensa)
VALUES (31, 'Destruir la torre maldita', '15000 monedas');


INSERT INTO Mision (IdMision, Nombre, Recompensa)
VALUES (32, 'Rescatar a los rehenes', '6000 monedas');


INSERT INTO Mision (IdMision, Nombre, Recompensa)
VALUES (33, 'Recuperar el libro sagrado', '3500 monedas');


INSERT INTO Mision (IdMision, Nombre, Recompensa)
VALUES (34, 'Descubrir el secreto del bosque encantado', '9000 monedas');


INSERT INTO Mision (IdMision, Nombre, Recompensa)
VALUES (35, 'Explorar la cueva del dragón', '5000 monedas');


INSERT INTO Mision (IdMision, Nombre, Recompensa)
VALUES (36, 'Recuperar la espada de la luz', '2000 monedas');


INSERT INTO Mision (IdMision, Nombre, Recompensa)
VALUES (37, 'Liberar al pueblo del hechizo', '10000 monedas');


INSERT INTO Mision (IdMision, Nombre, Recompensa)
VALUES (38, 'Salvar al reino del invasor', '15000 monedas');




## Prompt

3 / 3

Considera que los inserts anteriores estan en una tabla, ahora genera otros 20 inserts para la tabla Mision:IdMision, Nombre, Recompensa con IdMisiona partir de 38
Aquí te dejo los 20 inserts solicitados para la tabla Mision con IdMision a partir de 38:

sql
Copy code

INSERT INTO Mision (IdMision, Nombre, Recompensa) VALUES (38, 'Recoger hierbas medicinales', '10 monedas de oro');

INSERT INTO Mision (IdMision, Nombre, Recompensa) VALUES (39, 'Buscar la espada maldita', 'Una armadura legendaria');

INSERT INTO Mision (IdMision, Nombre, Recompensa) VALUES (40, 'Proteger la aldea de los bandidos', '20 monedas de oro');

INSERT INTO Mision (IdMision, Nombre, Recompensa) VALUES (41, 'Encontrar la fuente de agua', 'Una poción de curación');

INSERT INTO Mision (IdMision, Nombre, Recompensa) VALUES (42, 'Destruir el portal oscuro', 'Un arma mágica');

INSERT INTO Mision (IdMision, Nombre, Recompensa) VALUES (43, 'Salvar al rey cautivo', '30 monedas de oro');

INSERT INTO Mision (IdMision, Nombre, Recompensa) VALUES (44, 'Cazar al monstruo del pantano', 'Un anillo de poder');

INSERT INTO Mision (IdMision, Nombre, Recompensa) VALUES (45, 'Recuperar el pergamino sagrado', 'Un pergamino mágico');

INSERT INTO Mision (IdMision, Nombre, Recompensa) VALUES (46, 'Descubrir el tesoro perdido', '50 monedas de oro');

INSERT INTO Mision (IdMision, Nombre, Recompensa) VALUES (47, 'Encontrar la entrada secreta a la cueva', 'Una llave mágica');

INSERT INTO Mision (IdMision, Nombre, Recompensa) VALUES (48, 'Derrotar al ejército enemigo', 'Una espada de luz');

INSERT INTO Mision (IdMision, Nombre, Recompensa) VALUES (49, 'Desenterrar la tumba de los antepasados', 'Un amuleto de protección');

INSERT INTO Mision (IdMision, Nombre, Recompensa) VALUES (50, 'Salvar a la princesa del dragón', 'Un escudo mágico');

INSERT INTO Mision (IdMision, Nombre, Recompensa) VALUES (51, 'Investigar la extraña desaparición', 'Un cetro mágico');

INSERT INTO Mision (IdMision, Nombre, Recompensa) VALUES (52, 'Rescatar a los aldeanos secuestrados', '40 monedas de oro');

INSERT INTO Mision (IdMision, Nombre, Recompensa) VALUES (53, 'Derrotar al poderoso mago oscuro', 'Un bastón mágico');

INSERT INTO Mision (IdMision, Nombre, Recompensa) VALUES (54, 'Encontrar la espada de la luz', 'Un escudo sagrado');

INSERT INTO Mision (IdMision, Nombre, Recompensa) VALUES (55, 'Proteger el bosque encantado', 'Una varita mágica');

INSERT INTO Mision (IdMision, Nombre, Recompensa) VALUES (56, 'Derrotar al gigante de las montañas', 'Una armadura de diamante');

INSERT INTO Mision (IdMision, Nombre, Recompensa)




## Prompt

2 / 2

Crea 30 inserts para Objetivos: CREATE TABLE Objetivos (
    IdObjetivo NUMBER(10) PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL,
    Descripcion VARCHAR2(100) NOT NULL,
    Dificultad NUMBER(2) NOT NULL,
    Progreso NUMBER(3) NOT NULL,
    Estado VARCHAR2(20) NOT NULL
);

2 / 2


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (1, 'Derrotar al jefe final', 'Vencer al jefe final de la mazmorra', 10, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (2, 'Recoger 50 objetos raros', 'Reunir 50 objetos raros para conseguir una recompensa', 7, 20, 'En progreso');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (3, 'Alcanzar el nivel 100', 'Subir de nivel hasta llegar al máximo', 8, 70, 'En progreso');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (4, 'Explorar todas las regiones', 'Descubrir y recorrer todas las regiones del mapa', 9, 5, 'En progreso');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (5, 'Conseguir el mejor equipamiento', 'Obtener las mejores armas y armaduras del juego', 10, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (6, 'Ganar 100 combates', 'Ganar 100 batallas contra otros jugadores', 6, 85, 'En progreso');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (7, 'Realizar todas las misiones', 'Completar todas las misiones del juego', 9, 35, 'En progreso');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (8, 'Vencer a todos los jefes', 'Derrotar a todos los jefes del juego', 9, 15, 'En progreso');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (9, 'Desbloquear todas las habilidades', 'Desbloquear todas las habilidades del personaje', 8, 50, 'En progreso');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (10, 'Ganar una partida clasificatoria', 'Ganar una partida clasificatoria en línea', 7, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (11, 'Ser el mejor jugador', 'Alcanzar el primer puesto en el ranking global', 10, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (12, 'Crear una alianza', 'Formar una alianza con otros jugadores', 6, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre





## Prompt

2 / 2

Considera que los inserts anteriores estan en una tabla, ahora genera otros 20 inserts para la tabla Objetivosa con IdObjetivo  a partir de 13

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (13, 'Matar al jefe de la mazmorra', 'Acaba con el jefe de la mazmorra y obtén su tesoro', 8, 0, 'En progreso');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (14, 'Recoger 20 pieles de lobo', 'Consigue 20 pieles de lobo para el mercader', 5, 0, 'No iniciado');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (15, 'Encontrar el tesoro perdido', 'Descubre el tesoro perdido en la montaña', 7, 0, 'No iniciado');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (16, 'Recolectar 100 flores', 'Recoge 100 flores para el alquimista', 4, 0, 'No iniciado');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (17, 'Eliminar a los bandidos del camino', 'Acaba con los bandidos que atacan a los viajeros', 6, 0, 'No iniciado');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (18, 'Encontrar la llave de la torre', 'Encuentra la llave de la torre abandonada', 5, 0, 'No iniciado');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (19, 'Derrotar al gigante de la montaña', 'Acaba con el gigante de la montaña que atemoriza al pueblo', 9, 0, 'No iniciado');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (20, 'Rescatar al prisionero', 'Libera al prisionero de la cárcel enemiga', 8, 0, 'No iniciado');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (21, 'Buscar la planta rara', 'Encuentra la planta rara que necesita el botánico', 6, 0, 'No iniciado');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (22, 'Recoger 50 minerales', 'Consigue 50 minerales para el herrero', 5, 0, 'No iniciado');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (23, 'Encontrar al desaparecido', 'Encuentra al desaparecido en el bosque', 6, 0, 'No iniciado');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad,





## Prompt

2 / 2

Considera que los inserts anteriores estan en una tabla, ahora genera otros 20 inserts para la tabla Objetivos con IdObjetivo  a partir de 24

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (24, 'Dominar la técnica del lanzamiento de cuchillos', 'Aprender la técnica del lanzamiento de cuchillos para mejorar el combate a distancia', 7, 0, 'En proceso');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (25, 'Reparar la armadura', 'Arreglar la armadura para mejorar la defensa en combate', 6, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (26, 'Encontrar el tesoro escondido', 'Buscar y encontrar el tesoro escondido en la cueva del bosque', 9, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (27, 'Destruir el nido de goblins', 'Eliminar el nido de goblins que se encuentra en la cueva del bosque', 8, 0, 'En proceso');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (28, 'Aprender a leer runas antiguas', 'Estudiar y aprender a leer runas antiguas para descifrar los escritos de los antiguos', 10, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (29, 'Derrotar al dragón de la montaña', 'Enfrentarse al temido dragón que vive en la cima de la montaña', 10, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (30, 'Buscar la hierba de curación', 'Encontrar la hierba de curación para sanar a los enfermos de la aldea', 6, 0, 'En proceso');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (31, 'Entrenar con el maestro de la espada', 'Entrenar con el maestro de la espada para mejorar la técnica en combate', 7, 0, 'En proceso');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (32, 'Construir una casa en el bosque', 'Construir una casa en el bosque para vivir alejado de la ciudad', 8, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (33, 'Investigar el misterioso castillo', 'Investigar el misterioso castillo abandonado en las afueras de la ciudad', 9, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (34, 'Capt





## Prompt

3 / 3

Considera que los inserts anteriormente mencionados estan en una tabla, ahora genera otros 20 inserts para la tabla Objetivos:IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado con IdObjetivo  a partir de 34
Para generar los 20 inserts para la tabla Objetivos con IdObjetivo a partir de 34, se pueden usar los siguientes comandos:

sql
Copy code

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (34, 'Objetivo 34', 'Descripcion del objetivo 34', 5, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (35, 'Objetivo 35', 'Descripcion del objetivo 35', 2, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (36, 'Objetivo 36', 'Descripcion del objetivo 36', 7, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (37, 'Objetivo 37', 'Descripcion del objetivo 37', 1, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (38, 'Objetivo 38', 'Descripcion del objetivo 38', 9, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (39, 'Objetivo 39', 'Descripcion del objetivo 39', 3, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (40, 'Objetivo 40', 'Descripcion del objetivo 40', 8, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (41, 'Objetivo 41', 'Descripcion del objetivo 41', 4, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (42, 'Objetivo 42', 'Descripcion del objetivo 42', 6, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (43, 'Objetivo 43', 'Descripcion del objetivo 43', 10, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (44, 'Objetivo 44', 'Descripcion del objetivo 44', 2, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (45, 'Objetivo 45', 'Descripcion del objetivo 45', 8, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (46, 'Objetivo 46', 'Descripcion del objetivo 46', 1, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dific




## Prompt

2 / 2

Considera que los inserts definidos durante nuestra conversación estan en una tabla, ahora genera otros 20 inserts para la tabla Objetivos:IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado con IdObjetivo  a partir de 47
Lo siento, pero no puedo generar 20 inserts para la tabla Objetivos sin conocer los registros anteriores. ¿Podrías proporcionar los inserts anteriores para poder continuar?





## Prompt

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (1, 'Derrotar al jefe final', 'Vencer al jefe final de la mazmorra', 10, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (2, 'Recoger 50 objetos raros', 'Reunir 50 objetos raros para conseguir una recompensa', 7, 20, 'En progreso');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (3, 'Alcanzar el nivel 100', 'Subir de nivel hasta llegar al máximo', 8, 70, 'En progreso');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (4, 'Explorar todas las regiones', 'Descubrir y recorrer todas las regiones del mapa', 9, 5, 'En progreso');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (5, 'Conseguir el mejor equipamiento', 'Obtener las mejores armas y armaduras del juego', 10, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (6, 'Ganar 100 combates', 'Ganar 100 batallas contra otros jugadores', 6, 85, 'En progreso');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (7, 'Realizar todas las misiones', 'Completar todas las misiones del juego', 9, 35, 'En progreso');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (8, 'Vencer a todos los jefes', 'Derrotar a todos los jefes del juego', 9, 15, 'En progreso');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (9, 'Desbloquear todas las habilidades', 'Desbloquear todas las habilidades del personaje', 8, 50, 'En progreso');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (10, 'Ganar una partida clasificatoria', 'Ganar una partida clasificatoria en línea', 7, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (11, 'Ser el mejor jugador', 'Alcanzar el primer puesto en el ranking global', 10, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (12, 'Crear una alianza', 'Formar una alianza con otros jugadores', 6, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (13, 'Matar al jefe de la mazmorra', 'Acaba con el jefe de la mazmorra y obtén su tesoro', 8, 0, 'En progreso');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado) VALUES (14, 'Recoger 20 pieles de lobo', 'Consigue 20 pieles de lobo para el mercader', 5, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (15, 'Encontrar el tesoro perdido', 'Descubre el tesoro perdido en la montaña', 7, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (16, 'Recolectar 100 flores', 'Recoge 100 flores para el alquimista', 4, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (17, 'Eliminar a los bandidos del camino', 'Acaba con los bandidos que atacan a los viajeros', 6, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (18, 'Encontrar la llave de la torre', 'Encuentra la llave de la torre abandonada', 5, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (19, 'Derrotar al gigante de la montaña', 'Acaba con el gigante de la montaña que atemoriza al pueblo', 9, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (20, 'Rescatar al prisionero', 'Libera al prisionero de la cárcel enemiga', 8, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (21, 'Buscar la planta rara', 'Encuentra la planta rara que necesita el botánico', 6, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (22, 'Recoger 50 minerales', 'Consigue 50 minerales para el herrero', 5, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (23, 'Encontrar al desaparecido', 'Encuentra al desaparecido en el bosque', 6, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (24, 'Dominar la técnica del lanzamiento de cuchillos', 'Aprender la técnica del lanzamiento de cuchillos para mejorar el combate a distancia', 7, 0, 'En proceso');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (25, 'Reparar la armadura', 'Arreglar la armadura para mejorar la defensa en combate', 6, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (26, 'Encontrar el tesoro escondido', 'Buscar y encontrar el tesoro escondido en la cueva del bosque', 9, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (27, 'Destruir el nido de goblins', 'Eliminar el nido de goblins que se encuentra en la cueva del bosque', 8, 0, 'En proceso');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (28, 'Aprender a leer runas antiguas', 'Estudiar y aprender a leer runas antiguas para descifrar los escritos de los antiguos', 10, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (29, 'Derrotar al dragón de la montaña', 'Enfrentarse al temido dragón que vive en la cima de la montaña', 10, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (30, 'Buscar la hierba de curación', 'Encontrar la hierba de curación para sanar a los enfermos de la aldea', 6, 0, 'En proceso');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (31, 'Entrenar con el maestro de la espada', 'Entrenar con el maestro de la espada para mejorar la técnica en combate', 7, 0, 'En proceso');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (32, 'Construir una casa en el bosque', 'Construir una casa en el bosque para vivir alejado de la ciudad', 8, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (33, 'Investigar el misterioso castillo', 'Investigar el misterioso castillo abandonado en las afueras de la ciudad', 9, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (34, 'Objetivo 34', 'Descripcion del objetivo 34', 5, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (35, 'Objetivo 35', 'Descripcion del objetivo 35', 2, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (36, 'Objetivo 36', 'Descripcion del objetivo 36', 7, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (37, 'Objetivo 37', 'Descripcion del objetivo 37', 1, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (38, 'Objetivo 38', 'Descripcion del objetivo 38', 9, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (39, 'Objetivo 39', 'Descripcion del objetivo 39', 3, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (40, 'Objetivo 40', 'Descripcion del objetivo 40', 8, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (41, 'Objetivo 41', 'Descripcion del objetivo 41', 4, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (42, 'Objetivo 42', 'Descripcion del objetivo 42', 6, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (43, 'Objetivo 43', 'Descripcion del objetivo 43', 10, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (44, 'Objetivo 44', 'Descripcion del objetivo 44', 2, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (45, 'Objetivo 45', 'Descripcion del objetivo 45', 8, 0, 'No iniciado');

INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)VALUES (46, 'Objetivo 46', 'Descripcion del objetivo 46', 1, 0, 'No iniciado');
The SQL statement you provided is incomplete. Please provide the full statement.





## Prompt

2 / 2

Considera que los inserts definidos durante nuestra conversación estan en una tabla, ahora genera otros 20 inserts para la tabla Objetivos:CREATE TABLE Objetivos (
    IdObjetivo NUMBER(10) PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL,
    Descripcion VARCHAR2(100) NOT NULL,
    Dificultad NUMBER(2) NOT NULL,
    Progreso NUMBER(3) NOT NULL,
    Estado VARCHAR2(20) NOT NULL
); con IdObjetivo  a partir de 47
Por supuesto, aquí te proporciono 20 inserts para la tabla Objetivos:


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (47, 'Aprender un nuevo idioma', 'Iniciar un curso en línea de inglés', 5, 20, 'En progreso');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (48, 'Hacer ejercicio regularmente', 'Ir al gimnasio 3 veces por semana', 3, 10, 'En progreso');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (49, 'Aprender a cocinar platos italianos', 'Tomar un curso en línea de cocina italiana', 6, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (50, 'Leer un libro cada mes', 'Leer "Los Miserables" de Victor Hugo', 2, 5, 'En progreso');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (51, 'Aprender a tocar un instrumento', 'Tomar clases de piano', 7, 0, 'Pendiente');


INSERT INTO Objetivos (IdObjetivo, Nombre, Descripcion, Dificultad, Progreso, Estado)
VALUES (52, 'Mejorar mis habilidades de comunicación', 'Tomar un curso en línea de comunicación efectiva', 4, 0, 'Pendiente');


INSERT INTO Objet





## Prompt

2 / 2

Crea 30 inserts para CREATE TABLE Clase (
    IdClase NUMBER(10) PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL
);  para el juego
Aquí están los 30 inserts solicitados para la tabla Clase:

arduino
Copy code

INSERT INTO Clase (IdClase, Nombre) VALUES (1, 'Guerrero');

INSERT INTO Clase (IdClase, Nombre) VALUES (2, 'Mago');

INSERT INTO Clase (IdClase, Nombre) VALUES (3, 'Cazador');

INSERT INTO Clase (IdClase, Nombre) VALUES (4, 'Paladín');

INSERT INTO Clase (IdClase, Nombre) VALUES (5, 'Sacerdote');

INSERT INTO Clase (IdClase, Nombre) VALUES (6, 'Ladrón');

INSERT INTO Clase (IdClase, Nombre) VALUES (7, 'Chamán');

INSERT INTO Clase (IdClase, Nombre) VALUES (8, 'Brujo');

INSERT INTO Clase (IdClase, Nombre) VALUES (9, 'Caballero de la Muerte');

INSERT INTO Clase (IdClase, Nombre) VALUES (10, 'Monje');

INSERT INTO Clase (IdClase, Nombre) VALUES (11, 'Cazador de Demonios');

INSERT INTO Clase (IdClase, Nombre) VALUES (12, 'Nigromante');

INSERT INTO Clase (IdClase, Nombre) VALUES (13, 'Bárbaro');

INSERT INTO Clase (IdClase, Nombre) VALUES (14, 'Ninja');

INSERT INTO Clase (IdClase, Nombre) VALUES (15, 'Pirata');

INSERT INTO Clase (IdClase, Nombre) VALUES (16, 'Samurai');

INSERT INTO Clase (IdClase, Nombre) VALUES (17, 'Médico');

INSERT INTO Clase (IdClase, Nombre) VALUES (18, 'Ingeniero');

INSERT INTO Clase (IdClase, Nombre) VALUES (19, 'Científico');

INSERT INTO Clase (IdClase, Nombre) VALUES (20, 'Druida');

INSERT INTO Clase (IdClase, Nombre) VALUES (21, 'Paladín Oscuro');

INSERT INTO Clase (IdClase, Nombre) VALUES (22, 'Bardo');

INSERT INTO Clase (IdClase, Nombre) VALUES (23, 'Adivino');

INSERT INTO Clase (IdClase, Nombre) VALUES (24, 'Artista Marcial');

INSERT INTO Clase (IdClase, Nombre) VALUES (25, 'Guardián');

INSERT INTO Clase (IdClase, Nombre) VALUES (26, 'Elementalista');

INSERT INTO Clase (IdClase, Nombre) VALUES (27, 'Psíquico');

INSERT INTO Clase (IdClase, Nombre) VALUES (28, 'Especialista en Venenos');

INSERT INTO Clase (IdClase, Nombre) VALUES (29, 'Asesino');

INSERT INTO Clase (IdClase, Nombre) VALUES (30, 'Cazador de Bestias');
Estos inserts crean una lista de clases comunes y algunas más exóticas para los jugadores del juego. Puede ajustar los nombres de las clases según sea necesario para que se adapten mejor a su juego.





## Prompt
Considera que los inserts definidos durante nuestra conversación estan en una tabla, ahora genera otros 20 inserts para la tabla Clase  con IdClase a partir de 30
Aquí te dejo 20 inserts para la tabla Clase con IdClase a partir de 30:

sql
Copy code

INSERT INTO Clase (IdClase, Nombre) VALUES (30, 'Caballero Oscuro');

INSERT INTO Clase (IdClase, Nombre) VALUES (31, 'Cazador de Demonios');

INSERT INTO Clase (IdClase, Nombre) VALUES (32, 'Bardo');

INSERT INTO Clase (IdClase, Nombre) VALUES (33, 'Mago del Hielo');

INSERT INTO Clase (IdClase, Nombre) VALUES (34, 'Nigromante');

INSERT INTO Clase (IdClase, Nombre) VALUES (35, 'Ingeniero');

INSERT INTO Clase (IdClase, Nombre) VALUES (36, 'Sacerdote');

INSERT INTO Clase (IdClase, Nombre) VALUES (37, 'Vikingo');

INSERT INTO Clase (IdClase, Nombre) VALUES (38, 'Ninja');

INSERT INTO Clase (IdClase, Nombre) VALUES (39, 'Médico');

INSERT INTO Clase (IdClase, Nombre) VALUES (40, 'Cazador');

INSERT INTO Clase (IdClase, Nombre) VALUES (41, 'Cazador de Dragones');

INSERT INTO Clase (IdClase, Nombre) VALUES (42, 'Elementalista');

INSERT INTO Clase (IdClase, Nombre) VALUES (43, 'Paladín');

INSERT INTO Clase (IdClase, Nombre) VALUES (44, 'Asesino');

INSERT INTO Clase (IdClase, Nombre) VALUES (45, 'Bandido');

INSERT INTO Clase (IdClase, Nombre) VALUES (46, 'Arquero');

INSERT INTO Clase (IdClase, Nombre) VALUES (47, 'Espadachín');

INSERT INTO Clase (IdClase, Nombre) VALUES (48, 'Monje');

INSERT INTO Clase (IdClase, Nombre) VALUES (49, 'Guardián');




## Prompt
Crea 30 inserts para CREATE TABLE Mascota (
    IdMascota NUMBER(10) PRIMARY KEY,
    Nombre VARCHAR2(50) NOT NULL,
    Tipo VARCHAR2(50) NOT NULL,
    Nivel NUMBER(10) NOT NULL,
    IdPersonaje NUMBER(10) NOT NULL,
    CONSTRAINT fk_mascota_personaje FOREIGN KEY (IdPersonaje)
        REFERENCES Personaje(IdPersonaje)
); para el juego
Aquí tienes 30 inserts para la tabla Mascota:

sql
Copy code

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (1, 'Fido', 'Perro', 5, 2);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (2, 'Mittens', 'Gato', 3, 1);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (3, 'Buddy', 'Perro', 7, 3);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (4, 'Fluffy', 'Gato', 2, 5);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (5, 'Max', 'Perro', 6, 4);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (6, 'Simba', 'León', 10, 6);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (7, 'Scooby', 'Perro', 8, 7);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (8, 'Whiskers', 'Gato', 4, 8);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (9, 'Bolt', 'Perro', 9, 10);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (10, 'Shadow', 'Gato', 6, 9);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (11, 'Rocky', 'Roca', 2, 11);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (12, 'Lily', 'Flor', 4, 12);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (13, 'Ziggy', 'Loro', 3, 13);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (14, 'Charlie', 'Perro', 5, 14);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (15, 'Salem', 'Gato', 4, 15);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (16, 'Perry', 'Ornitorrinco', 7, 16);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (17, 'Toby', 'Perro', 6, 17);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (18, 'Jinx', 'Gato', 5, 18);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (19, 'Boots', 'Gato', 3, 20);

INSERT INTO Mascota (IdMasc




## Prompt
Considera que los inserts definidos durante nuestra conversación estan en una tabla, ahora genera otros 20 inserts para la tabla Mascota con IdMascota a partir de 20

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (20, 'Max', 'Perro', 5, 2);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (21, 'Nemo', 'Pez', 3, 3);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (22, 'Fluffy', 'Gato', 2, 1);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (23, 'Spike', 'Perro', 4, 4);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (24, 'Cotton', 'Conejo', 1, 5);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (25, 'Toby', 'Perro', 2, 6);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (26, 'Buddy', 'Perro', 6, 7);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (27, 'Rocky', 'Tortuga', 3, 8);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (28, 'Mimi', 'Gato', 1, 9);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (29, 'Luna', 'Perro', 2, 10);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (30, 'Rex', 'Perro', 3, 11);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (31, 'Coco', 'Gato', 2, 12);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (32, 'Sasha', 'Perro', 4, 13);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (33, 'Simba', 'León', 5, 14);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (34, 'Ginger', 'Gato', 1, 15);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (35, 'Fido', 'Perro', 3, 16);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (36, 'Kiki', 'Gato', 2, 17);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (37, 'Rufus', 'Perro', 4, 18);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (38, 'Mittens', 'Gato', 1, 19);

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje) VALUES (





## Prompt

2 / 2

Considera que los inserts definidos durante nuestra conversación estan en una tabla, ahora genera otros 15 inserts para la tabla Mascota con IdMascota a partir de 38
Aquí te dejo 15 inserts para la tabla Mascota con IdMascota a partir de 38:

sql
Copy code

INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje)
VALUES (38, 'Fafnir', 'Dragon', 15, 12);


INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje)
VALUES (39, 'Lupita', 'Lobo', 10, 14);


INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje)
VALUES (40, 'Hermes', 'Halcón', 8, 15);


INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje)
VALUES (41, 'Bastet', 'Gato', 12, 17);


INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje)
VALUES (42, 'Anubis', 'Perro', 6, 19);


INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje)
VALUES (43, 'Seth', 'Serpiente', 11, 20);


INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje)
VALUES (44, 'Epona', 'Caballo', 14, 22);


INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje)
VALUES (45, 'Kazumi', 'Zorro', 9, 23);


INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje)
VALUES (46, 'Simba', 'León', 12, 26);


INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje)
VALUES (47, 'Molly', 'Gato', 5, 27);


INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje)
VALUES (48, 'Jasón', 'Cerbero', 20, 30);


INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje)
VALUES (49, 'Morgana', 'Cuervo', 11, 32);


INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje)
VALUES (50, 'Tiamat', 'Dragón', 18, 33);


INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje)
VALUES (51, 'Rufus', 'Zorro', 6, 35);


INSERT INTO Mascota (IdMascota, Nombre, Tipo, Nivel, IdPersonaje)
VALUES (52, 'Loki', 'Gato', 8, 36);




## Prompt
Genera 30 inserts para CREATE TABLE Objeto (
  IdPersonaje NUMBER,
  Nombre VARCHAR2(50),
  Descripcion VARCHAR2(200),
  Tipo VARCHAR2(20),
  Cantidad NUMBER,
  CONSTRAINT pk_Objeto PRIMARY KEY (IdPersonaje, Nombre),
  CONSTRAINT fk_Objeto_Personaje FOREIGN KEY (IdPersonaje) REFERENCES Personaje(IdPersonaje)
);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)
VALUES (1, 'Espada de fuego', 'Una espada encantada con el poder del fuego', 'Arma', 1);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)
VALUES (1, 'Poción de curación', 'Una poción que restaura la salud del personaje', 'Consumible', 5);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)
VALUES (2, 'Vara de hielo', 'Una vara mágica que invoca poderosos hechizos de hielo', 'Arma', 1);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)
VALUES (2, 'Pergamino de teletransporte', 'Un pergamino que permite al personaje teletransportarse a un lugar cercano', 'Consumible', 2);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)
VALUES (3, 'Armadura de mithril', 'Una armadura ligera y resistente hecha de mithril', 'Armadura', 1);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)
VALUES (3, 'Poción de velocidad', 'Una poción que aumenta la velocidad del personaje', 'Consumible', 3);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)
VALUES (4, 'Arco élfico', 'Un arco elegante y preciso hecho por los elfos', 'Arma', 1);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)
VALUES (4, 'Flechas de plata', 'Flechas hechas de plata que infligen daño extra a los no muertos', 'Munición', 20);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)
VALUES (5, 'Bastón de luz', 'Un bastón que emite una luz cegadora que daña a los enemigos', 'Arma', 1);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)
VALUES (5, 'Poción de invisibilidad', 'Una poción que hace invisible al personaje por un tiempo limitado', 'Consumible', 1);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)
VALUES (6, 'Escudo de hierro', 'Un escudo pesado hecho de hierro', 'Armadura', 1);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)
VALUES (6, 'Poción de fuerza', 'Una poción que aumenta la fuerza del personaje', 'Consumible', 4);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)
VALUES (7, 'Espada de luz', 'Una espada sagrada que emite una luz brillante que daña a los enemigos oscuros', 'Arma', 1);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)
VALUES (7, 'Pergamino de resurrección', 'Un pergamino que permite al personaje resucitar a un compañero caído





## Prompt

2 / 2

Considera que los inserts definidos durante nuestra conversación estan en una tabla, ahora genera otros 15 inserts para la tabla Objeto diferentes a los anteriores
Por supuesto, aquí te dejo 15 inserts adicionales para la tabla Objeto:


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (3, 'Poción de salud superior', 'Restaura 500 puntos de salud', 'Poción', 10);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (4, 'Espada de ébano', 'Una espada hecha de ébano de gran calidad', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (1, 'Vara de fuego', 'Una vara mágica que lanza bolas de fuego', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (2, 'Botas de velocidad', 'Botas que aumentan la velocidad de su portador', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (5, 'Anillo de protección', 'Un anillo que aumenta la defensa de su portador', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (1, 'Cetro de hielo', 'Un cetro mágico que lanza rayos de hielo', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (3, 'Poción de maná', 'Restaura 200 puntos de maná', 'Poción', 20);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (2, 'Capa de invisibilidad', 'Una capa que hace invisible a su portador', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (4, 'Arco largo', 'Un arco largo para atacar a distancia', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (5, 'Escudo de hierro', 'Un escudo que aumenta la defensa de su portador', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (2, 'Amuleto de la suerte', 'Un amuleto que aumenta la probabilidad de obtener objetos raros', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (1, 'Libro de hechizos', 'Un libro que contiene poderosos hechizos', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (3, 'Daga envenenada', 'Una daga envenenada que causa daño a lo largo del tiempo', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (4, 'Botella de aire', 'Una botella que permite respirar bajo el agua', 'Poción', 5);
INSERT




## Prompt
Genera 25 inserts para la  tabla Objeto diferentes a los siguientes: 
INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (1, 'Espada de fuego', 'Una espada encantada con el poder del fuego', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (1, 'Poción de curación', 'Una poción que restaura la salud del personaje', 'Consumible', 5);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (2, 'Vara de hielo', 'Una vara mágica que invoca poderosos hechizos de hielo', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (2, 'Pergamino de teletransporte', 'Un pergamino que permite al personaje teletransportarse a un lugar cercano', 'Consumible', 2);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (3, 'Armadura de mithril', 'Una armadura ligera y resistente hecha de mithril', 'Armadura', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (3, 'Poción de velocidad', 'Una poción que aumenta la velocidad del personaje', 'Consumible', 3);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (4, 'Arco élfico', 'Un arco elegante y preciso hecho por los elfos', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (4, 'Flechas de plata', 'Flechas hechas de plata que infligen daño extra a los no muertos', 'Munición', 20);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (5, 'Bastón de luz', 'Un bastón que emite una luz cegadora que daña a los enemigos', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (5, 'Poción de invisibilidad', 'Una poción que hace invisible al personaje por un tiempo limitado', 'Consumible', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (6, 'Escudo de hierro', 'Un escudo pesado hecho de hierro', 'Armadura', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (6, 'Poción de fuerza', 'Una poción que aumenta la fuerza del personaje', 'Consumible', 4);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (7, 'Espada de luz', 'Una espada sagrada que emite una luz brillante que daña a los enemigos oscuros', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (3, 'Poción de salud superior', 'Restaura 500 puntos de salud', 'Poción', 10);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (4, 'Espada de ébano', 'Una espada hecha de ébano de gran calidad', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (1, 'Vara de fuego', 'Una vara mágica que lanza bolas de fuego', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (2, 'Botas de velocidad', 'Botas que aumentan la velocidad de su portador', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (5, 'Anillo de protección', 'Un anillo que aumenta la defensa de su portador', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (1, 'Cetro de hielo', 'Un cetro mágico que lanza rayos de hielo', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (3, 'Poción de maná', 'Restaura 200 puntos de maná', 'Poción', 20);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (2, 'Capa de invisibilidad', 'Una capa que hace invisible a su portador', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (4, 'Arco largo', 'Un arco largo para atacar a distancia', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (5, 'Escudo de hierro', 'Un escudo que aumenta la defensa de su portador', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (2, 'Amuleto de la suerte', 'Un amuleto que aumenta la probabilidad de obtener objetos raros', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (1, 'Libro de hechizos', 'Un libro que contiene poderosos hechizos', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (3, 'Daga envenenada', 'Una daga envenenada que causa daño a lo largo del tiempo', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (4, 'Botella de aire', 'Una botella que permite respirar bajo el agua', 'Poción', 5);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (7, 'Botella de veneno', 'Una botella de veneno mortal para envenenar armas', 'Consumible', 3);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (6, 'Martillo de guerra', 'Un martillo de guerra pesado para golpear enemigos', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (5, 'Capa de resistencia al fuego', 'Una capa que protege al portador de daño de fuego', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (4, 'Dagas gemelas', 'Un par de dagas idénticas para ataques rápidos', 'Arma', 2);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (2, 'Amuleto de la suerte', 'Un amuleto que aumenta la probabilidad de encontrar objetos raros', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (3, 'Capa de camuflaje', 'Una capa que permite al portador camuflarse en el entorno', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (1, 'Escudo de madera', 'Un escudo ligero hecho de madera', 'Armadura', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (7, 'Cetro de trueno', 'Un cetro mágico que lanza rayos de trueno', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (6, 'Poción de veneno', 'Una poción que envenena a los enemigos', 'Consumible', 5);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (5, 'Túnica de la sombra', 'Una túnica que permite al portador moverse sigilosamente', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (4, 'Martillo de guerra de fuego', 'Un martillo de guerra encantado con el poder del fuego', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (3, 'Escudo de oro', 'Un escudo resistente hecho de oro', 'Armadura', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (2, 'Libro de conjuros', 'Un libro con hechizos poderosos', 'Consumible', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (1, 'Túnica del fuego', 'Una túnica encantada con el poder del fuego', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (7, 'P





## Prompt
Genera 10 inserts para la  tabla Objeto diferentes a los siguientes: 
INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (1, 'Espada de fuego', 'Una espada encantada con el poder del fuego', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (1, 'Poción de curación', 'Una poción que restaura la salud del personaje', 'Consumible', 5);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (2, 'Vara de hielo', 'Una vara mágica que invoca poderosos hechizos de hielo', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (2, 'Pergamino de teletransporte', 'Un pergamino que permite al personaje teletransportarse a un lugar cercano', 'Consumible', 2);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (3, 'Armadura de mithril', 'Una armadura ligera y resistente hecha de mithril', 'Armadura', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (3, 'Poción de velocidad', 'Una poción que aumenta la velocidad del personaje', 'Consumible', 3);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (4, 'Arco élfico', 'Un arco elegante y preciso hecho por los elfos', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (4, 'Flechas de plata', 'Flechas hechas de plata que infligen daño extra a los no muertos', 'Munición', 20);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (5, 'Bastón de luz', 'Un bastón que emite una luz cegadora que daña a los enemigos', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (5, 'Poción de invisibilidad', 'Una poción que hace invisible al personaje por un tiempo limitado', 'Consumible', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (6, 'Escudo de hierro', 'Un escudo pesado hecho de hierro', 'Armadura', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (6, 'Poción de fuerza', 'Una poción que aumenta la fuerza del personaje', 'Consumible', 4);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad)VALUES (7, 'Espada de luz', 'Una espada sagrada que emite una luz brillante que daña a los enemigos oscuros', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (3, 'Poción de salud superior', 'Restaura 500 puntos de salud', 'Poción', 10);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (4, 'Espada de ébano', 'Una espada hecha de ébano de gran calidad', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (1, 'Vara de fuego', 'Una vara mágica que lanza bolas de fuego', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (2, 'Botas de velocidad', 'Botas que aumentan la velocidad de su portador', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (5, 'Anillo de protección', 'Un anillo que aumenta la defensa de su portador', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (1, 'Cetro de hielo', 'Un cetro mágico que lanza rayos de hielo', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (3, 'Poción de maná', 'Restaura 200 puntos de maná', 'Poción', 20);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (2, 'Capa de invisibilidad', 'Una capa que hace invisible a su portador', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (4, 'Arco largo', 'Un arco largo para atacar a distancia', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (5, 'Escudo de hierro', 'Un escudo que aumenta la defensa de su portador', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (2, 'Amuleto de la suerte', 'Un amuleto que aumenta la probabilidad de obtener objetos raros', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (1, 'Libro de hechizos', 'Un libro que contiene poderosos hechizos', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (3, 'Daga envenenada', 'Una daga envenenada que causa daño a lo largo del tiempo', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (4, 'Botella de aire', 'Una botella que permite respirar bajo el agua', 'Poción', 5);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (7, 'Botella de veneno', 'Una botella de veneno mortal para envenenar armas', 'Consumible', 3);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (6, 'Martillo de guerra', 'Un martillo de guerra pesado para golpear enemigos', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (5, 'Capa de resistencia al fuego', 'Una capa que protege al portador de daño de fuego', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (4, 'Dagas gemelas', 'Un par de dagas idénticas para ataques rápidos', 'Arma', 2);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (2, 'Amuleto de la suerte', 'Un amuleto que aumenta la probabilidad de encontrar objetos raros', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (3, 'Capa de camuflaje', 'Una capa que permite al portador camuflarse en el entorno', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (1, 'Escudo de madera', 'Un escudo ligero hecho de madera', 'Armadura', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (7, 'Cetro de trueno', 'Un cetro mágico que lanza rayos de trueno', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (6, 'Poción de veneno', 'Una poción que envenena a los enemigos', 'Consumible', 5);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (5, 'Túnica de la sombra', 'Una túnica que permite al portador moverse sigilosamente', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (4, 'Martillo de guerra de fuego', 'Un martillo de guerra encantado con el poder del fuego', 'Arma', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (3, 'Escudo de oro', 'Un escudo resistente hecho de oro', 'Armadura', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (2, 'Libro de conjuros', 'Un libro con hechizos poderosos', 'Consumible', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (1, 'Túnica del fuego', 'Una túnica encantada con el poder del fuego', 'Equipo', 1);

INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (7, 'Poción de resistencia al fuego', 'Una poción que otorga resistencia al fuego por un tiempo limitado', 'Consumible', 3);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (6, 'Botas de hierro', 'Botas pesadas hechas de hierro', 'Equipo', 1);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (5, 'Escudo de luz', 'Un escudo sagrado que protege de los ataques oscuros', 'Armadura', 1);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (4, 'Pergamino de invocación', 'Un pergamino que invoca a un aliado temporal para el combate', 'Consumible', 2);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (3, 'Espada de agua', 'Una espada encantada con el poder del agua', 'Arma', 1);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (2, 'Poción de invisibilidad prolongada', 'Una poción que hace invisible al personaje por un tiempo prolongado', 'Consumible', 1);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (1, 'Lanza de trueno', 'Una lanza mágica que invoca relámpagos', 'Arma', 1);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (7, 'Bastón de la naturaleza', 'Un bastón que invoca el poder de la naturaleza', 'Arma', 1);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (6, 'Poción de resistencia a la magia', 'Una poción que otorga resistencia a la magia por un tiempo limitado', 'Consumible', 3);


INSERT INTO Objeto (IdPersonaje, Nombre, Descripcion, Tipo, Cantidad) VALUES (5, 'Anillo de invisibilidad', 'Un anillo que hace invisible a su portador por un tiempo limitado', 'Equipo', 1);





## Prompt
Genera 20 inserts para la tabla RealizarMision =CREATE TABLE RealizarMision (
  IdPersonaje INT NOT NULL,
  IdMision INT NOT NULL,
  IdObjetivo INT NOT NULL,
  FechaRealizacion DATE,
  PRIMARY KEY (IdPersonaje, IdMision, IdObjetivo),
  FOREIGN KEY (IdPersonaje) REFERENCES Personaje(IdPersonaje),
  FOREIGN KEY (IdMision) REFERENCES Mision(IdMision),
  FOREIGN KEY (IdObjetivo) REFERENCES Objetivos(IdObjetivo)
);

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (1, 10, 5, '2022-01-01');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (2, 10, 5, '2022-01-01');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (3, 10, 5, '2022-01-01');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (1, 11, 5, '2022-01-02');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (2, 11, 5, '2022-01-02');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (3, 11, 5, '2022-01-02');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (1, 12, 6, '2022-01-03');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (2, 12, 6, '2022-01-03');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (3, 12, 6, '2022-01-03');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (4, 10, 7, '2022-01-04');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (5, 11, 7, '2022-01-04');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (6, 12, 7, '2022-01-04');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (4, 13, 8, '2022-01-05');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (5, 14, 8, '2022-01-05');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (6, 15, 8, '2022-01-05');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (7, 10, 9, '2022-01-06');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (8, 11, 9, '2022-01-06');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (9, 12, 9, '2022-01-06');

INSERT INTO RealizarMision (IdPersonaje,





## Prompt
Genera 10 inserts para la  tabla RealizarMision diferentes a los siguientes: 
INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (1, 10, 5, '2022-01-01');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (2, 10, 5, '2022-01-01');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (3, 10, 5, '2022-01-01');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (1, 11, 5, '2022-01-02');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (2, 11, 5, '2022-01-02');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (3, 11, 5, '2022-01-02');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (1, 12, 6, '2022-01-03');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (2, 12, 6, '2022-01-03');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (3, 12, 6, '2022-01-03');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (4, 10, 7, '2022-01-04');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (5, 11, 7, '2022-01-04');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (6, 12, 7, '2022-01-04');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (4, 13, 8, '2022-01-05');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (5, 14, 8, '2022-01-05');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (6, 15, 8, '2022-01-05');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (7, 10, 9, '2022-01-06');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (8, 11, 9, '2022-01-06');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (9, 12, 9, '2022-01-06');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (10, 13, 10, '2022-01-07');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (11, 14, 10, '2022-01-07');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (12, 15, 10, '2022-01-07');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (13, 16, 11, '2022-01-08');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (14, 17, 11, '2022-01-08');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (15, 18, 11, '2022-01-08');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (16, 19, 12, '2022-01-09');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (17, 20, 12, '2022-01-09');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (18, 21, 12, '2022-01-09');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (19, 22, 13, '2022-01-10');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (20, 23, 13, '2022-01-10');





## Prompt

3 / 3

Genera 20 inserts para la  tabla RealizarMision=CREATE TABLE RealizarMision (
  IdPersonaje INT NOT NULL,
  IdMision INT NOT NULL,
  IdObjetivo INT NOT NULL,
  FechaRealizacion DATE,
  PRIMARY KEY (IdPersonaje, IdMision, IdObjetivo),
  FOREIGN KEY (IdPersonaje) REFERENCES Personaje(IdPersonaje),
  FOREIGN KEY (IdMision) REFERENCES Mision(IdMision),
  FOREIGN KEY (IdObjetivo) REFERENCES Objetivos(IdObjetivo)
); diferentes a los siguientes: 

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (1, 10, 5, '2022-01-01');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (2, 10, 5, '2022-01-01');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (3, 10, 5, '2022-01-01');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (1, 11, 5, '2022-01-02');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (2, 11, 5, '2022-01-02');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (3, 11, 5, '2022-01-02');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (1, 12, 6, '2022-01-03');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (2, 12, 6, '2022-01-03');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (3, 12, 6, '2022-01-03');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (4, 10, 7, '2022-01-04');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (5, 11, 7, '2022-01-04');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (6, 12, 7, '2022-01-04');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (4, 13, 8, '2022-01-05');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (5, 14, 8, '2022-01-05');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (6, 15, 8, '2022-01-05');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (7, 10, 9, '2022-01-06');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (8, 11, 9, '2022-01-06');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (9, 12, 9, '2022-01-06');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (10, 13, 10, '2022-01-07');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (11, 14, 10, '2022-01-07');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (12, 15, 10, '2022-01-07');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (13, 16, 11, '2022-01-08');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (14, 17, 11, '2022-01-08');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (15, 18, 11, '2022-01-08');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (16, 19, 12, '2022-01-09');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (17, 20, 12, '2022-01-09');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (18, 21, 12, '2022-01-09');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (19, 22, 13, '2022-01-10');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (20, 23, 13, '2022-01-10');
Aquí te proporciono 20 nuevas inserciones para la tabla RealizarMision que solicitaste:


INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (4, 16, 13, '2022-01-10');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (5, 17, 13, '2022-01-10');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (6, 18, 13, '2022-01-10');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (7, 19, 14, '2022-01-11');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (8, 20, 14, '2022-01-11');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (9, 21, 14, '2022-01-11');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (10, 22, 15, '2022-01-12');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (11, 23, 15, '2022-01-12');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (12, 24, 15, '2022-01-12');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (13, 25, 16, '2022-01-13');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (14, 26, 16, '2022-01-13');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (15, 27, 16, '2022-01-13');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (16, 28, 17, '2022-01-14');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (17, 29, 17, '2022-01-14');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (18, 30, 17, '2022-01-14');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (19, 31, 18, '2022-01-15');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (20, 32, 18, '2022-01




## Prompt
Genera 20 inserts para la  tabla RealizarMision=CREATE TABLE RealizarMision (
  IdPersonaje INT NOT NULL,
  IdMision INT NOT NULL,
  IdObjetivo INT NOT NULL,
  FechaRealizacion DATE,
  PRIMARY KEY (IdPersonaje, IdMision, IdObjetivo),
  FOREIGN KEY (IdPersonaje) REFERENCES Personaje(IdPersonaje),
  FOREIGN KEY (IdMision) REFERENCES Mision(IdMision),
  FOREIGN KEY (IdObjetivo) REFERENCES Objetivos(IdObjetivo)
); diferentes a los siguientes:  
INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (1, 10, 5, '2022-01-01');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (2, 10, 5, '2022-01-01');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (3, 10, 5, '2022-01-01');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (1, 11, 5, '2022-01-02');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (2, 11, 5, '2022-01-02');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (3, 11, 5, '2022-01-02');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (1, 12, 6, '2022-01-03');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (2, 12, 6, '2022-01-03');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (3, 12, 6, '2022-01-03');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (4, 10, 7, '2022-01-04');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (5, 11, 7, '2022-01-04');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (6, 12, 7, '2022-01-04');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (4, 13, 8, '2022-01-05');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (5, 14, 8, '2022-01-05');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (6, 15, 8, '2022-01-05');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (7, 10, 9, '2022-01-06');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (8, 11, 9, '2022-01-06');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (9, 12, 9, '2022-01-06');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (10, 13, 10, '2022-01-07');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (11, 14, 10, '2022-01-07');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (12, 15, 10, '2022-01-07');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (13, 16, 11, '2022-01-08');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (14, 17, 11, '2022-01-08');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (15, 18, 11, '2022-01-08');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (16, 19, 12, '2022-01-09');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (17, 20, 12, '2022-01-09');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (18, 21, 12, '2022-01-09');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (19, 22, 13, '2022-01-10');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (20, 23, 13, '2022-01-10');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (4, 16, 13, '2022-01-10');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (5, 17, 13, '2022-01-10');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (6, 18, 13, '2022-01-10');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (7, 19, 14, '2022-01-11');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (8, 20, 14, '2022-01-11');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (9, 21, 14, '2022-01-11');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (10, 22, 15, '2022-01-12');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (11, 23, 15, '2022-01-12');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (12, 24, 15, '2022-01-12');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (13, 25, 16, '2022-01-13');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (14, 26, 16, '2022-01-13');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (15, 27, 16, '2022-01-13');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (16, 28, 17, '2022-01-14');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (17, 29, 17, '2022-01-14');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (18, 30, 17, '2022-01-14');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (19, 31, 18, '2022-01-15');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (17, 20, 12, '2022-01-09');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (18, 20, 13, '2022-01-10');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (19, 19, 13, '2022-01-10');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (20, 18, 13, '2022-01-10');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (21, 17, 14, '2022-01-11');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (22, 16, 14, '2022-01-11');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (23, 15, 14, '2022-01-11');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (24, 14, 15, '2022-01-12');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (25, 13, 15, '2022-01-12');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (26, 12, 15, '2022-01-12');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (27, 11, 16, '2022-01-13');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (28, 10, 16, '2022-01-13');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (29, 9, 16, '2022-01-13');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (30, 8, 17, '2022-01-14');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (31, 7, 17, '2022-01-14');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (32, 6, 17, '2022-01-14');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (33, 5, 18, '2022-01-15');

INSERT INTO RealizarMision (IdPersonaje, IdMision, IdObjetivo, FechaRealizacion) VALUES (34, 4, 18, '2022-01-15');

INSERT INTO RealizarMision (IdPersonaje,