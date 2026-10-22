CREATE TABLE genero (
    idgenero SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

-- 2. Tabla Estado Civil
CREATE TABLE estadocivil (
    idestadocivil SERIAL PRIMARY KEY,
    nombre VARCHAR(70) NOT NULL
);

-- 3. Tabla Sexo
CREATE TABLE sexo (
    idsexo SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

-- 4. Tabla Persona
CREATE TABLE persona (
    idpersona SERIAL PRIMARY KEY,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE,
    idgenero INT REFERENCES genero(idgenero),
    idestadocivil INT REFERENCES estadocivil(idestadocivil)
);

-- 5. Tabla Teléfono
CREATE TABLE telefono (
    idtelefono SERIAL PRIMARY KEY,
    idpersona INT REFERENCES persona(idpersona) ON DELETE CASCADE,
    telefono VARCHAR(20) NOT NULL,
    tipo VARCHAR(30)
);

-- 6. Tabla Dirección
CREATE TABLE direccion (
    iddireccion SERIAL PRIMARY KEY,
    idpersona INT REFERENCES persona(idpersona) ON DELETE CASCADE,
    direccion TEXT NOT NULL,
    ciudad VARCHAR(50),
    referencia TEXT
);

-- 7. Tabla Correo (requerida por el proyecto)
CREATE TABLE correo (
    idcorreo SERIAL PRIMARY KEY,
    idpersona INT REFERENCES persona(idpersona) ON DELETE CASCADE,
    correo VARCHAR(150) NOT NULL
);
