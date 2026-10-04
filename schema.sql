create table USUARIOS (
id_usuarios SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
setor VARCHAR(50) NOT NULL
);

create table TECNICOS (
id_tecnicos SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
especialidade VARCHAR(50) NOT NULL
);

create table CATEGORIAS (
id_categorias SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL UNIQUE
);

create table Prioridades (
id_prioridades SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL UNIQUE
);

create table STATUS (
id_status SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL UNIQUE
);

create table CHAMADOS (
id_chamados SERIAL PRIMARY KEY,
titulo VARCHAR(100) NOT NULL,
descricao TEXT NOT NULL,
data_abertura TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
data_fechamento TIMESTAMP,
id_usuarios INT NOT NULL,
id_tecnicos INT NOT NULL,
id_categorias INT NOT NULL,
id_prioridades INT NOT NULL,
id_status INT NOT NULL,
FOREIGN KEY (id_usuarios) REFERENCES USUARIOS(id_usuarios),
FOREIGN KEY (id_tecnicos) REFERENCES TECNICOS(id_tecnicos),
FOREIGN KEY (id_categorias) REFERENCES CATEGORIAS(id_categorias),
FOREIGN KEY (id_prioridades) REFERENCES PRIORIDADES(id_prioridades),
FOREIGN KEY (id_status) REFERENCES STATUS(id_status)
);

INSERT INTO CATEGORIAS (nome) VALUES ('Hardware'), ('Software'), ('Rede'), ('Acesso'), ('Outros');
INSERT INTO PRIORIDADES (nome) VALUES ('Baixa'), ('Média'), ('Alta'), ('Crítica');
INSERT INTO STATUS (nome) VALUES ('Aberto'), ('Em andamento'), ('Resolvido'), ('Fechado');
