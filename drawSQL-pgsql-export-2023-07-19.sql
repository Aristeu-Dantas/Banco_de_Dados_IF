CREATE TABLE disciplina_ingresso (
    id_disciplina BIGINT NOT NULL,
    nome_disciplina VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_disciplina)
);

CREATE TABLE telefone_institucionais (
    id_telefone BIGINT NOT NULL,
    ramal BIGINT NOT NULL,
    numero_telefone BIGINT NOT NULL,
    PRIMARY KEY (id_telefone)
);

CREATE TABLE funcao (
    id_funcao BIGINT NOT NULL,
    nome_servidor BIGINT NOT NULL,
    PRIMARY KEY (id_funcao)
);

CREATE TABLE setor_suap (
    id_setor BIGINT NOT NULL,
    nome_setor VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_setor)
);

CREATE TABLE campus (
    id_campus BIGINT NOT NULL,
    nome_campus VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_campus)
);

CREATE TABLE jornada_trabalho (
    id_jornada BIGINT NOT NULL,
    JornadaTrabalho VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_jornada)
);

CREATE TABLE servidor (
    matricula BIGINT NOT NULL,
    nome BIGINT NOT NULL,
    categoria BIGINT NOT NULL,
    cargo BIGINT NOT NULL,
    curriculo_lattes BIGINT NOT NULL,
    urk_foto_75x100 BIGINT NOT NULL,
    id_setor BIGINT NOT NULL,
    id_disciplina BIGINT NOT NULL,
    id_funcao BIGINT NOT NULL,
    id_jornada BIGINT NOT NULL,
    id_campus BIGINT NOT NULL,
    id_telefones BIGINT NOT NULL,
    PRIMARY KEY (matricula),
    FOREIGN KEY (id_funcao) REFERENCES funcao (id_funcao),
    FOREIGN KEY (id_campus) REFERENCES campus (id_campus),
    FOREIGN KEY (id_jornada) REFERENCES jornada_trabalho (id_jornada),
    FOREIGN KEY (id_disciplina) REFERENCES disciplina_ingresso (id_disciplina),
    FOREIGN KEY (id_telefones) REFERENCES telefone_institucionais (id_telefone),
    FOREIGN KEY (id_setor) REFERENCES setor_suap (id_setor)
);

CREATE TABLE setor_siape (
    id BIGINT NOT NULL,
    PRIMARY KEY (id)
);
