-- Criar base de dados e tabela necessarias para o projeto
-- DB: gm_biblioteca
-- Tabela: codigo_postal

-- 1) Criar base de dados (se nao existir)
CREATE DATABASE IF NOT EXISTS gm_biblioteca CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE gm_biblioteca;

-- 2) Criar tabela (se nao existir) com somente os campos atuais
CREATE TABLE IF NOT EXISTS codigo_postal (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    cod_postal VARCHAR(8) NOT NULL,
    cod_localidade VARCHAR(120) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uk_cod_postal (cod_postal)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 3) Harmonizar estruturas antigas para o estado atual
-- Observacao: IF EXISTS/IF NOT EXISTS requer MySQL/MariaDB recentes
ALTER TABLE codigo_postal
    ADD COLUMN IF NOT EXISTS id INT UNSIGNED NOT NULL AUTO_INCREMENT FIRST,
    ADD PRIMARY KEY IF NOT EXISTS (id);

-- Renomear colunas antigas quando existirem
ALTER TABLE codigo_postal CHANGE COLUMN IF EXISTS codigo_postal cod_postal VARCHAR(8) NOT NULL;
ALTER TABLE codigo_postal CHANGE COLUMN IF EXISTS cep cod_postal VARCHAR(8) NOT NULL;
ALTER TABLE codigo_postal CHANGE COLUMN IF EXISTS cidade cod_localidade VARCHAR(120) NOT NULL;

-- Ajustar UNIQUE KEY para nova coluna
ALTER TABLE codigo_postal DROP INDEX IF EXISTS uk_codigo_postal;
ALTER TABLE codigo_postal DROP INDEX IF EXISTS uk_codigo_postal_cep;
ALTER TABLE codigo_postal ADD UNIQUE KEY uk_cod_postal (cod_postal);

-- Remover colunas legadas, se existirem
ALTER TABLE codigo_postal DROP COLUMN IF EXISTS endereco;
ALTER TABLE codigo_postal DROP COLUMN IF EXISTS distrito;
ALTER TABLE codigo_postal DROP COLUMN IF EXISTS observacoes;
ALTER TABLE codigo_postal DROP COLUMN IF EXISTS data_cadastro;

-- 4) Garantir collation/charset corretos
ALTER TABLE codigo_postal CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;



