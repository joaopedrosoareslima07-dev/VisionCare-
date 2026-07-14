CREATE DATABASE VisionCare;
USE VisionCare;

CREATE TABLE usuarios(
id_usuario INT PRIMARY KEY AUTO_INCREMENT,
login VARCHAR(20) NOT NULL,
senha VARCHAR(20) NOT NULL, 
ativo boolean
);

ALTER TABLE usuarios MODIFY senha VARCHAR(255);

ALTER TABLE usuarios ADD UNIQUE  (login);


CREATE TABLE funcionarios (
id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
nome_funcionario VARCHAR(100) NOT NULL,
cargo VARCHAR(50) NOT NULL,
data_nascimento DATE NOT NULL, 
email VARCHAR(150), 
cpf VARCHAR(20) NOT NULL,
usuario_id INT,
FOREIGN KEY (usuario_id) REFERENCES usuarios(id_usuario)

);

ALTER TABLE funcionarios ADD telefone_funcionario VARCHAR(20) UNIQUE NOT NULL;

ALTER TABLE funcionarios  ADD UNIQUE  (cpf);

CREATE TABLE medico(
id_medico INT PRIMARY KEY AUTO_INCREMENT, 
nome VARCHAR(150) NOT NULL, 
crm VARCHAR(15) NOT NULL, 
especialidade VARCHAR(50),
usuario_id INT,
FOREIGN KEY (usuario_id) REFERENCES usuarios(id_usuario)
);

ALTER TABLE medico ADD telefone_medico VARCHAR(20) UNIQUE;

ALTER TABLE medico ADD UNIQUE  (crm);


CREATE TABLE paciente(
id_paciente INT PRIMARY KEY AUTO_INCREMENT,
nome_paciente  VARCHAR(150) NOT NULL, 
profissao  VARCHAR(150) NOT NULL, 
data_nascimento DATE, 
email VARCHAR(150),
cpf VARCHAR(20) NOT NULL, 
telefone VARCHAR(20), 
endereco VARCHAR(200),
ativo BOOLEAN 
);

ALTER TABLE paciente ADD sexo CHAR(1);
ALTER TABLE paciente MODIFY ativo BOOLEAN DEFAULT TRUE;
ALTER TABLE paciente  ADD UNIQUE  (cpf);

CREATE TABLE consulta(
id_consulta INT PRIMARY KEY AUTO_INCREMENT,
medico_id INT,
FOREIGN KEY(medico_id) REFERENCES medico(id_medico), 
paciente_id INT,
FOREIGN KEY(paciente_id) REFERENCES paciente(id_paciente),
dia DATE,
hora TIME,
status VARCHAR(10)
);

CREATE TABLE prontuario(
id_prontuario INT PRIMARY KEY AUTO_INCREMENT, 
paciente_id INT,
FOREIGN KEY (paciente_id) REFERENCES paciente(id_paciente),
medico_id INT,
FOREIGN KEY (medico_id)  REFERENCES medico(id_medico),
diagnostico TEXT NOT NULL,
observacao TEXT,
dia TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



