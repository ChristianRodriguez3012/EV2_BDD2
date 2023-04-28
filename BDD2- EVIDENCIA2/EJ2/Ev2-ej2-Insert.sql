-- INSERCION:
-- Para la tabla DEPARTAMENTO:
INSERT INTO DEPARTAMENTO (Codigo_D, Nombre, Localizacion) VALUES
  (1, 'Ventas', 'Madrid'),
  (2, 'Marketing', 'Barcelona'),
  (3, 'Recursos Humanos', 'Sevilla'),
  (4, 'Contabilidad', 'Valencia'),
  (5, 'IT', 'Bilbao');

-- Para la tabla EMPLEADO:
INSERT INTO EMPLEADO (Id_E, DNI_E, Nombre, Telefono, Salario, Codigo_D, Jefe_ID) VALUES
  (1, '12345678A', 'Juan Perez', '987654321', 2500.00, 1, NULL),
  (2, '23456789B', 'Ana Gomez', '925123456', 3000.00, 1, 1),
  (3, '34567890C', 'Carlos Sanchez', '912345678', 2000.00, 2, NULL),
  (4, '45678901D', 'Laura Rodriguez', '987123456', 3500.00, 2, 2),
  (5, '56789012E', 'Pedro Fernandez', '954321789', 1800.00, 2, 2);

-- NOTA:
-- Tener en cuenta que en la tabla EMPLEADO, el campo Jefe_ID puede ser nulo si el empleado no es jefe, 
-- de lo contrario debe hacer referencia al campo Id_E del empleado que es su jefe. presente ejemplo podemos ver que: 
-- Juan Perez no tiene jefe, Ana Gomez es jefe de Juan Perez, Carlos Sanchez no tiene jefe, 
-- Laura Rodriguez es jefe de Ana Gomez y Pedro Fernandez es jefe de Ana Gomez.