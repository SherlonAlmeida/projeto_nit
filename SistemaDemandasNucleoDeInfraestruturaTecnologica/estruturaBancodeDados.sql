CREATE TABLE Usuarios (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    tipo INT,
    nome VARCHAR(100),
    email VARCHAR(30),
    senha VARCHAR(20),
    FOREIGN KEY (tipo) REFERENCES ListaTiposUsuarios (id)
);

CREATE TABLE ListaTiposUsuarios (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    titulo VARCHAR (100),
    descricao VARCHAR (500)
);

CREATE TABLE Demandas (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    tipo INT,
    escola_id INT,
    FOREIGN KEY (tipo) REFERENCES ListaDemandas(id),
    FOREIGN KEY (escola_id) REFERENCES Escolas(id)
);

CREATE TABLE ListaDemandas (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    titulo VARCHAR (100),
    descricao VARCHAR (500)
);

CREATE TABLE Acompanhamentos (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    tipo INT,
    data_inicio DATE,
    prazo INT,
    status INT,
    demanda_id INT,
    FOREIGN KEY (tipo) REFERENCES ListaRecursos(id),
    FOREIGN KEY (status) REFERENCES ListaStatus(id),
    FOREIGN KEY (demanda_id) REFERENCES Demandas(id)
);

CREATE TABLE ListaStatus (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    titulo VARCHAR (100)
);

CREATE TABLE ListaRecursos (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    titulo VARCHAR (100),
    descricao VARCHAR (500)
);

CREATE TABLE Escolas (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR (50),
    email_escola VARCHAR (20),
    email_caixa_escolar VARCHAR (20),
    telefone_escola VARCHAR (15),
    telefone_direcao VARCHAR (15),
    regional_id INT,
    grau_id INT,
    tipo BOOL,
    FOREIGN KEY (regional_id) REFERENCES ListaRegionais(id),
    FOREIGN KEY (grau_id) REFERENCES ListaGraus(id)
);

CREATE TABLE ListaRegionais (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    titulo VARCHAR (5)
);

CREATE TABLE ListaGraus (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    titulo VARCHAR (20)
);