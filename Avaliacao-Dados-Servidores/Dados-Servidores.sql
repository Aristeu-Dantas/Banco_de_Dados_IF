CREATE TABLE "servidor"(
    "matricula" BIGINT NOT NULL,
    "nome" TEXT NOT NULL,
    "categoria" VARCHAR(255) NOT NULL,
    "cargo" BIGINT NOT NULL,
    "curriculo_lattes" VARCHAR(255) NOT NULL,
    "urk_foto_75x100" VARCHAR(255) NOT NULL,
    "id_setor" SERIAL NOT NULL,
    "id_disciplina" SERIAL NOT NULL,
    "id_funcao" SERIAL NOT NULL,
    "id_jornada" SERIAL NOT NULL,
    "id_campus" SERIAL NOT NULL,
    "id_telefones" SERIAL NOT NULL
);
ALTER TABLE
    "servidor" ADD PRIMARY KEY("matricula");
CREATE TABLE "jornada_trabalho"(
    "id_jornada" SERIAL NOT NULL,
    "JornadaTrabalho" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "jornada_trabalho" ADD PRIMARY KEY("id_jornada");
CREATE TABLE "setor_suap"(
    "id_setor" SERIAL NOT NULL,
    "nome_setor" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "setor_suap" ADD PRIMARY KEY("id_setor");
CREATE TABLE "campus"(
    "id_campus" SERIAL NOT NULL,
    "nome_campus" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "campus" ADD PRIMARY KEY("id_campus");
CREATE TABLE "telefone_institucionais"(
    "id_telefone" SERIAL NOT NULL,
    "ramal" BIGINT NOT NULL,
    "numero_telefone" BIGINT NOT NULL
);
ALTER TABLE
    "telefone_institucionais" ADD PRIMARY KEY("id_telefone");
CREATE TABLE "funcao"(
    "id_funcao" SERIAL NOT NULL,
    "nome_funcao" BIGINT NOT NULL
);
ALTER TABLE
    "funcao" ADD PRIMARY KEY("id_funcao");
CREATE TABLE "disciplina_ingresso"(
    "id_disciplina" SERIAL NOT NULL,
    "nome_disciplina" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "disciplina_ingresso" ADD PRIMARY KEY("id_disciplina");
ALTER TABLE
    "servidor" ADD CONSTRAINT "servidor_id_disciplina_foreign" FOREIGN KEY("id_disciplina") REFERENCES "disciplina_ingresso"("id_disciplina");
ALTER TABLE
    "servidor" ADD CONSTRAINT "servidor_id_telefones_foreign" FOREIGN KEY("id_telefones") REFERENCES "telefone_institucionais"("id_telefone");
ALTER TABLE
    "servidor" ADD CONSTRAINT "servidor_id_setor_foreign" FOREIGN KEY("id_setor") REFERENCES "setor_suap"("id_setor");
ALTER TABLE
    "servidor" ADD CONSTRAINT "servidor_id_campus_foreign" FOREIGN KEY("id_campus") REFERENCES "campus"("id_campus");
ALTER TABLE
    "servidor" ADD CONSTRAINT "servidor_id_jornada_foreign" FOREIGN KEY("id_jornada") REFERENCES "jornada_trabalho"("id_jornada");
ALTER TABLE
    "servidor" ADD CONSTRAINT "servidor_id_funcao_foreign" FOREIGN KEY("id_funcao") REFERENCES "funcao"("id_funcao");
