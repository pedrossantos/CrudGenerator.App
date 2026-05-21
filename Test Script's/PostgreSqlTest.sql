DROP TABLE IF EXISTS Funcionario;
DROP TABLE IF EXISTS Cargo;
DROP TABLE IF EXISTS Empresa;

CREATE TABLE Empresa
(
	id SERIAL NOT NULL,
	nome VARCHAR(128) NOT NULL,
	email VARCHAR(128) NOT NULL,

	CONSTRAINT PK_EmpresaId PRIMARY KEY (id),
	CONSTRAINT IDX_NomeEmail UNIQUE(nome, email)
);

CREATE TABLE Cargo
(
	id INT NOT NULL,
	idEmpresa INT NOT NULL CHECK(idEmpresa > 0),
	descricao VARCHAR(128) NOT NULL UNIQUE,

	CONSTRAINT PK_CargoId PRIMARY KEY (id, idEmpresa),
	CONSTRAINT FK_EmpresaId FOREIGN KEY (idEmpresa)
		REFERENCES Empresa(id)
		ON UPDATE CASCADE
);

CREATE TABLE Funcionario
(
	id SERIAL NOT NULL,
	nome VARCHAR(128) NOT NULL UNIQUE,
	email VARCHAR(128) NOT NULL DEFAULT ' ',
	idCargo INT NOT NULL CHECK(idCargo > 0),
	idEmpresa INT NOT NULL CHECK(idEmpresa > 0),
	dataCriacao TIMESTAMP DEFAULT(now()),

	columnBigInt BIGINT DEFAULT(1),
	columnBigSerial BIGSERIAL,
	columnBit BIT,
	columnVarBit VARBIT,
	columnBollean BOOLEAN,
	columnByteA BYTEA,
	columnChar CHAR(10) DEFAULT('A'),
	columnVarChar VARCHAR DEFAULT('A'),
	columnVarCharWithLength VARCHAR(128) DEFAULT('A'),
	columnData DATE DEFAULT('2000-01-01'),
	columnDouble DOUBLE PRECISION DEFAULT(0.5),
	columnInteger INTEGER DEFAULT(1),
	columnMoney MONEY DEFAULT(1000000),
	columnNumeric NUMERIC DEFAULT(1.7),
	columnNumericWithRange NUMERIC(10) DEFAULT(2.4),
	columnDecimal DECIMAL DEFAULT(1.932),
	columnDecimalWithRange DECIMAL(10,2) DEFAULT(1.22),
	columnReal REAL DEFAULT(2.33),
	columnSmallInt SMALLINT DEFAULT(1),
	columnSmallSerial SMALLSERIAL,
	columnSerial SERIAL,
	columnText TEXT DEFAULT('A'),
	columnTime TIME DEFAULT('15:00:00'),
	columnTimeTZ TIMETZ DEFAULT('15:00:00 -03:00'),
	columnTimeStamp TIMESTAMP DEFAULT('2000-01-01 12:00:00'),
	columnTimeStampTZ TIMESTAMPTZ DEFAULT('2000-01-01 12:00:00 -03:00'),
	columnUUID UUID,
	columnXml XML,

	CONSTRAINT PK_FuncionarioId PRIMARY KEY (id),
	CONSTRAINT FK_CargoId FOREIGN KEY (idCargo,idEmpresa)
		REFERENCES Cargo(id, idEmpresa)
		ON UPDATE CASCADE
);