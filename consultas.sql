//REGISTRAR UN USUARIO AL FORO POINTS OF VIEW//

INSERT INTO usuario (id, usuario, contraseña, nombre, apellido, correo, rol) VALUES ('145', 'luis34', '09876ytr', 'Luiks Dhavid', 'Ramirez', 'ramirez23@es.com', 'estudiante');

// Consulta para ingresar publicacion al FORO//
INSERT INTO Publicación (Contenido) VALUE (“El razonamiento inductivo tiene como principal objetivo”)

// Consulta para eliminar una publicacion del FORO//
DELETE FROM Publicación WHERE Contenido = ‘ La física…’

//Consulta para modificar los valores de una publicacion//
UPDATE Publicación SET Contenido= ‘Los amores son’ WHERE Estudiante = ‘Esteban’ AND Fecha= ‘4 de mayo 2018’

// Consulta para ordenar los usuarios de la base de datos por orden alfabético (Descendente y ascendente)//

SELECT Nombre, Apellido, Correo FROM Usuario ORDER BY Nombre Asc
SELECT Nombre, Apellido, Correo FROM Usuario ORDER BY Nombre dsc

// Consulta para buscar un número determinado de publicaciones en un rango de tiempo//

SELECT * FROM publicacion WHERE fecha BETWEEN ’23 de mayo 2018’ AND ’28 de mayo 2018’;

//Esta consulta fue utilizada para agregar un campo a una tabla//

ALTER TABLE publicación ADD COLUMN puntuación varchar(30);

//Esta consulta fue utilizada para modificar el nombre de una tabla//
RENAME TABLE comentario TO comentarios


//Consulta para encontrar los datos de un estudiante en específico//
SELECT * FROM usuario WHERE Id= “89”
