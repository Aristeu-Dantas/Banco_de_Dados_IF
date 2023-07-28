import sys

# Função para ler um arquivo CSV e retornar seus dados em um dicionário
def ler_arquivo(nome_arquivo):
    # Variável para indicar se o arquivo foi lido com sucesso
    lido = False
    # Dicionário para armazenar os dados do arquivo
    dados_retorno = dict()

    try:
        # Abre o arquivo no modo leitura
        with open(nome_arquivo, 'r', encoding='utf-8') as arq:
            print('Abrindo o arquivo...')
            # Lê as linhas do arquivo
            for linha in arq:
                linha = linha.strip().split(';')  # Corrigir o separador para ';'
                # A primeira linha do arquivo contém o cabeçalho
                if not lido:
                    cabecalho = linha
                    lido = True
                else:
                    # Cria um dicionário com os dados da linha e usa o campo 'matricula' (índice 0) como chave
                    dados_retorno[linha[0]] = dict(zip(cabecalho, linha))
    except FileNotFoundError:
        dados_retorno = f'ERRO: Arquivo Inexistente...'
        print(dados_retorno)
    except:
        dados_retorno = f'ERRO: {sys.exc_info()[0]}'
        print(dados_retorno)
    finally:
        return lido, dados_retorno
