import sys, os
from Entidades.conexao import *
from Entidades.constantes import *
from Entidades.ler_arquivos import *
from view.consultas import *

def main():
    # Lendo os dados do arquivo CSV
    arquivo_csv = os.path.join(APP_DIR, 'arquivo.csv')
    lido, dados_retorno = ler_arquivo(arquivo_csv)

    if not lido:
        sys.exit()

    # Conectando ao banco de dados
    conexao_db = DB_HOST, DB_NAME, DB_USER, DB_PASS

    if not conexao_db[0]:
        print(conexao_db[1])
        sys.exit()

    connDB = conexao_db[1]
    while True:
        opcao = input('''
        Escolha sua opção:
        0 - Sair do programa
        1 - Inserir dados no banco
        2 - Consultar tipos de servidores por campus
        3 - Consultar docentes por disciplina
        4 - Consultar quantidade de docentes por disciplinas e por campus
        >> ''')

        if opcao == '0':
            print("\nENCERRANDO O PROGRAMA!\n")
            connDB.close()
            sys.exit()
        elif opcao == '1':
            inserir_dados()
        elif opcao == '2':
            servidoresCampus()
        elif opcao == '3':
            docentesDisciplina()
        elif opcao == '4':
            quantidadeDocentesDisciplinas()
        else:
            print("\nOPÇÃO INVÁLIDA!!!\n")

if __name__ == "__main__":
    main()
