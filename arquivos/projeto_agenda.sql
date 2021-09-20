
-- SQL para o Projeto Agenda de Contatos
-- Version 1.0
-- Autor: Prof. Rodrigo Cezario da Silva

-- Criacao da Base de dados
CREATE DATABASE IF NOT EXISTS `Agenda` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `Agenda`;

CREATE TABLE Usuario (
    UserID integer primary key AUTO_INCREMENT,
    UserNome varchar(50) not null,
    UserEmail varchar(50) not null,
    UserLogin varchar(20) not null,
    UserSenha varchar(20) not null
);

CREATE TABLE Contato (
    ContatoID integer primary key AUTO_INCREMENT,
    ContatoNome varchar(50) not null,
    UserID integer,
	FOREIGN KEY (UserID) REFERENCES Usuario (UserID)
);

CREATE TABLE Email (
    EmailID integer primary key AUTO_INCREMENT,
    EmailEnd varchar(50) not null,
    ContatoID integer,
	FOREIGN KEY (ContatoID) REFERENCES Contato (ContatoID)
);

CREATE TABLE Telefone (
    TelID integer primary key AUTO_INCREMENT,
    TelNumero integer,
    ContatoID integer,
	FOREIGN KEY (ContatoID) REFERENCES Contato (ContatoID)
);

INSERT INTO Usuario (UserNome, UserEmail, UserLogin, UserSenha) VALUES ('Administrador', 'admin@admin.com', 'ADMIN', '123VAI');
