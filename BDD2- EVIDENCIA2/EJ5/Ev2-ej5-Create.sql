-- CREACION:
-- Creacion de tabla EMPLEADO
CREATE TABLE Empleado (
    Id_Empleado SERIAL PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellidos VARCHAR(50),
    Direccion VARCHAR(100),
    Telefono VARCHAR(20),
    NIF VARCHAR(20),
    Fecha_Nacimiento DATE,
    Nacionalidad VARCHAR(50),
    Sexo CHAR(1),
    Firma bytea,
    Salario NUMERIC(10, 2),
    Tipo VARCHAR(20)
);
-- El formato 'bytea' en PostgreSQL es un tipo de datos binarios que se utiliza para almacenar datos en formato de bytes. 
-- Los datos en este formato pueden ser cualquier tipo de archivo binario, incluyendo imágenes, archivos de audio, 
-- documentos de texto y cualquier otro tipo de archivo que se pueda representar en forma binaria. 
-- Es similar al tipo de datos 'blob' en otros sistemas de gestión de bases de datos, como MySQL y Oracle. 
-- En PostgreSQL, 'bytea' se usa para almacenar datos binarios en una tabla.


-- Creacion de tabla Curso
CREATE TABLE Curso (
  Codigo_Curso SERIAL PRIMARY KEY,
  Nombre_Curso VARCHAR(255),
  Descripcion_Curso VARCHAR(255),
  Duracion_Horas INT,
  Costo_Curso FLOAT
);

-- Creacion de tabla Edicion
CREATE TABLE  Edicion (
  Codigo_Edicion INT PRIMARY KEY,
  Nombre_Curso VARCHAR(255),
  Numero_Edicion INT,
  Fecha_Inicio DATE,
  Horario VARCHAR(255),
  Lugar VARCHAR(255),
  Codigo_Curso INT REFERENCES Curso(Codigo_Curso)
);

-- Creacion de tabla Capacitado
CREATE TABLE Capacitado (
  Id_Capacitado INT PRIMARY KEY,
  Codigo_Edicion INT REFERENCES Edicion(Codigo_Edicion),
  Id_Empleado INT REFERENCES Empleado(Id_Empleado)
);

-- Creacion de tabla No_Capacitado
CREATE TABLE No_Capacitado (
  Id_No_Capacitado INT PRIMARY KEY,
  Codigo_Edicion INT REFERENCES Edicion(Codigo_Edicion),
  Id_Empleado INT REFERENCES Empleado(Id_Empleado)
);
