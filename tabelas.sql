create database dvdslocadora;
use dvdslocadora

CREATE TABLE GENEROS (
    id_genero INT PRIMARY KEY AUTO_INCREMENT,
    nome_genero VARCHAR(30) NOT NULL
);

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    endereco VARCHAR(200),
    telefone VARCHAR(15),
    email VARCHAR(100),
    data_cadastro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE Funcionarios (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL
);

CREATE TABLE DVDs (
    id_dvd INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    id_genero INT NOT NULL,
    diretor VARCHAR(50),
    duracao_minutos INT,
    classificacao_indicativa VARCHAR(10),
    quantidade_estoque INT DEFAULT 1,
    disponivel BOOLEAN DEFAULT TRUE,
    data_cadastro DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (id_genero) REFERENCES GENEROS(id_genero)
);

CREATE TABLE Alugueis (
    id_aluguel INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_dvd INT NOT NULL,
    id_funcionario INT NOT NULL,
    data_retirada DATE DEFAULT CURRENT_DATE,
    data_devolucao_prevista DATE NOT NULL,
    data_devolucao_real DATE,
    valor DECIMAL(10, 2) NOT NULL,
    multa DECIMAL(10, 2) DEFAULT 0,
    status ENUM('Ativo', 'Devolvido', 'Atrasado') DEFAULT 'Ativo',
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_dvd) REFERENCES DVDs(id_dvd),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionarios(id_funcionario)
);