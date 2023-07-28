# Projeto de Banco de Dados IF

Este repositório contém o projeto desenvolvido como parte das avaliações da disciplina de Banco de Dados, orientada pelo professor Charles, no curso presencial do Instituto Federal do Rio Grande do Norte (IFRN).

## Descrição do Projeto

O projeto consiste em um sistema de gerenciamento de informações de servidores do IFRN. O sistema foi desenvolvido utilizando Python e PostgreSQL, com o objetivo de armazenar e consultar dados relacionados aos servidores da instituição, tais como informações sobre campus, categorias de servidores, disciplinas de ingresso e outras informações relevantes.

O sistema permite inserir dados dos servidores em um banco de dados PostgreSQL, realizar consultas sobre diferentes aspectos dos servidores e exibir os resultados na tela.

## Estrutura do Projeto

O projeto está organizado em várias pastas, cada uma com uma função específica:

- **Dao**: Contém os arquivos relacionados ao acesso ao banco de dados, incluindo as classes responsáveis pela inserção e consulta de dados.

- **Entidades**: Nesta pasta estão os arquivos que definem as classes que representam as entidades do sistema, como servidor, campus, categoria, etc.

- **Pasta_SQL**: Aqui são encontrados os arquivos SQL com os comandos para criar a estrutura do banco de dados e realizar consultas pré-definidas.

- **View**: Contém os arquivos relacionados à interface do sistema, como menus e exibição de resultados.

## Como executar o Projeto

Para executar o projeto, siga os seguintes passos:

1. Certifique-se de ter o Python e o PostgreSQL instalados em sua máquina.

2. Clone este repositório em sua máquina local.

3. Importe o arquivo `criar_estrutura_db.sql` para criar as tabelas no banco de dados PostgreSQL.

4. Modifique as configurações do banco de dados (nome do banco, usuário e senha) no arquivo `conexao.py`, localizado na pasta `Entidades`.

5. Execute o arquivo `main.py`, que contém a função principal do sistema. Isso iniciará o sistema e apresentará um menu com opções para inserir dados no banco de dados e realizar diferentes tipos de consultas.

## Contribuindo

Sinta-se à vontade para contribuir com este projeto. Se encontrar problemas, bugs ou tiver sugestões de melhorias, abra uma "issue" ou envie um "pull request".

## Contato

Em caso de dúvidas ou mais informações, entre em contato pelo e-mail: aristeu_dantas@hotmail.com.

Agradeceço a todos que contribuíram para este projeto!
