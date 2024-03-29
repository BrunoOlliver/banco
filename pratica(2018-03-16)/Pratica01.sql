CREATE TABLE Paciente (
  cpf NUMBER PRIMARY KEY,
  nome_paciente VARCHAR(100) NOT NULL,
  dataNascimento NUMBER NOT NULL,
  endereco_paciente VARCHAR(100) DEFAULT 'Uberlāndia'
);

CREATE TABLE Consulta(
  consulta_id INT PRIMARY KEY,
  cpf NUMBER NOT NULL,
  codigoConvenio NUMBER NOT NULL,
  crm NUMBER NOT NULL,
  uf NUMBER NOT NULL,
  data DATE,
  horario INT,
  valor FLOAT DEFAULT 'valor > 0',
  CONSTRAINT consultaPK PRIMARY KEY(consulta_id),
  CONSTRAINT consultaFK FOREIGN KEY(cpf) REFERENCES Paciente(cpf)
);

CREATE TABLE Medico(
  medico_id INT PRIMARY KEY,
  crm NUMBER NOT NULL,
  uf NUMBER NOT NULL,
  nome_medico VARCHAR(100) NOT NULL,
  cpf NUMBER PRIMARY KEY,
  endereco_medico VARCHAR(100) DEFAULT 'uberlāndia',
  telefone  INT,
  CONSTRAINT medicoPK PRIMARY KEY(medico_id),
  CONSTRAINT medicoFK FOREIGN KEY(crm,uf) REFERENCES Consulta(crm,uf) 
);
