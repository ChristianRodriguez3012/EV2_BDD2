-- INSERTS:

-- Inserts para tabla Empleado
INSERT INTO Empleado (Nombre, Apellidos, Direccion, Telefono, NIF, Fecha_Nacimiento, Nacionalidad, Sexo, Firma, Salario, Tipo)
VALUES ('Juan', 'Pérez', 'Calle Mayor 123', '555-1234', '12345678A', '1980-05-12', 'Española', 'M', NULL, 2000.50, 'Empleado'),
       ('Ana', 'García', 'Avenida de la Paz 456', '555-5678', '87654321B', '1995-08-22', 'Mexicana', 'F', NULL, 2500.75, 'Gerente'),
       ('Pedro', 'Martínez', 'Calle del Sol 789', '555-9012', '56789123C', '1972-03-27', 'Argentina', 'M', NULL, 1800.00, 'Empleado'),
       ('María', 'López', 'Calle Mayor 321', '555-3456', '32145678D', '1989-11-08', 'Colombiana', 'F', NULL, 2200.25, 'Empleado'),
       ('Carlos', 'Fernández', 'Calle del Río 654', '555-7890', '78901234E', '1985-06-18', 'Española', 'M', NULL, 2400.50, 'Gerente');

-- Inserts para tabla Curso
INSERT INTO Curso (Codigo_Curso, Nombre_Curso, Descripcion_Curso, Duracion_Horas, Costo_Curso)
VALUES (1, 'Introducción a la programación', 'Curso para aprender los fundamentos de la programación', 40, 1000.50),
       (2, 'Bases de datos', 'Curso para aprender a manejar bases de datos', 30, 800.25),
       (3, 'Desarrollo web', 'Curso para aprender a desarrollar aplicaciones web', 60, 1500.00),
       (4, 'Marketing digital', 'Curso para aprender las mejores estrategias de marketing digital', 50, 1200.75),
       (5, 'Diseño gráfico', 'Curso para aprender a diseñar gráficos y logotipos', 45, 1000.00);

-- Inserciones para la tabla Edicion
INSERT INTO Edicion (Codigo_edicion, Nombre_Curso, Fecha_Inicio, Horario, Lugar, Codigo_Curso)
VALUES  (1, 'Intro1_2022', '2022-05-01', '8:00-12:00', 'Aula 101', 1),
		(2, 'Intro2_2022', '2022-06-01', '14:00-18:00', 'Aula 102', 1),
		(3, 'Avan1_2022', '2022-07-01', '8:00-12:00', 'Aula 103', 2),
		(4, 'Avan2_2022', '2022-08-01', '14:00-18:00', 'Aula 104', 2),
		(5, 'Prog1_2022', '2022-09-01', '8:00-12:00', 'Aula 105', 3);

-- Inserts para la tabla Capacitado:
INSERT INTO Capacitado (Id_Capacitado, Codigo_Edicion, Id_Empleado)
VALUES (1, 1, 1),
       (2, 2, 2),
       (3, 3, 3),
       (4, 4, 1),
       (5, 5, 2);

-- Inserts para la tabla No_Capacitado:
INSERT INTO No_Capacitado (Id_No_Capacitado, Codigo_Edicion, Id_Empleado)
VALUES (1, 1, 4),
       (2, 2, 5),
       (3, 3, 4),
       (4, 4, 3),
       (5, 5, 2);

