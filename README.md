# Amazon-DynamoDB
La arquitectura de Amazon DynamoDB está diseñada para ofrecer alta disponibilidad, durabilidad y un rendimiento consistentemente bajo en latencia, siendo ideal para aplicaciones de escala global y de alto rendimiento. A continuación, se describen los componentes y características clave de esta arquitectura:
Componentes Principales
Tablas, Ítems y Atributos
Tablas: En DynamoDB, los datos se almacenan en tablas. Cada tabla es una colección de ítems.
Ítems: Un ítem es una colección de atributos y es equivalente a una fila en una base de datos relacional.
Atributos: Los atributos son los datos que componen un ítem y son equivalentes a las columnas en una base de datos relacional.
Claves Primarias y Secundarias
Clave Primaria: Cada ítem en una tabla es identificado de manera única por su clave primaria. Esta puede ser una clave de partición (hash key) o una combinación de clave de partición y clave de ordenamiento (sort key).
Índices Secundarios: DynamoDB permite la creación de índices secundarios para mejorar las opciones de consulta. Existen dos tipos de índices secundarios:
Índice Secundario Local (LSI): Utiliza la misma clave de partición que la tabla principal pero con una clave de ordenamiento diferente.
Índice Secundario Global (GSI): Permite utilizar una clave de partición y una clave de ordenamiento diferentes a las de la tabla principal, facilitando consultas más flexibles.
Características Clave
Escalabilidad y Rendimiento
Escalabilidad Horizontal: DynamoDB está diseñado para escalar horizontalmente, ajustando automáticamente los recursos según la demanda sin intervención manual.
Rendimiento Consistente: Garantiza una latencia de un solo dígito en milisegundos, incluso cuando las tablas crecen de unos pocos megabytes a cientos de terabytes.
Particionamiento Automático: DynamoDB maneja el particionamiento y la repartición de datos automáticamente para distribuir la carga de manera eficiente y evitar puntos calientes.
Gestión Totalmente Administrada
Servicio Sin Servidor (Serverless): DynamoDB es un servicio totalmente administrado que elimina la necesidad de gestionar servidores, realizar aprovisionamiento de capacidad, aplicar parches o gestionar actualizaciones de software.
Durabilidad y Alta Disponibilidad: DynamoDB garantiza la durabilidad y alta disponibilidad de los datos, con replicación automática y recuperación ante fallos.
Caché y Optimización
DynamoDB Accelerator (DAX): Es una caché en memoria que mejora el rendimiento de las aplicaciones al manejar millones de solicitudes por segundo con latencias de microsegundos.
Seguridad y Cumplimiento
Transacciones ACID: DynamoDB soporta transacciones ACID, permitiendo operaciones coordinadas de inserción, eliminación o actualización en múltiples ítems como parte de una única operación lógica.
Cifrado y Backup: Ofrece cifrado de datos, backups bajo demanda y recuperación a un punto en el tiempo (PITR), asegurando que los datos estén protegidos y puedan ser restaurados en caso de fallos.
Modelos de Datos Flexibles
Modelos de Clave-Valor y Documentos: DynamoDB soporta tanto modelos de datos de clave-valor como de documentos, ofreciendo flexibilidad para adaptarse a diferentes necesidades de negocio.
En resumen, la arquitectura de Amazon DynamoDB está optimizada para manejar aplicaciones de gran escala con alta disponibilidad y rendimiento consistente, eliminando la complejidad de gestión de la infraestructura y permitiendo a los desarrolladores centrarse en la lógica de negocio.
