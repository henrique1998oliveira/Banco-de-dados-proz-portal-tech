CREATE DATABASE ESCOLA;


\c ESCOLA

CREATE TABLE ALUNO (
  ID SERIAL PRIMARY KEY,
  NOME VARCHAR(50) NOT NULL,
  EMAIL VARCHAR(50) NOT NULL,
  ENDERECO VARCHAR(100) NOT NULL
);