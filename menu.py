import sqlite3 # importa a pasta SQL  para dentro do python

conexao = sqlite3.connect("gestaoNIT.sqlite3") # Conecta o banco de dados com Python
cursor = conexao.cursor() # cursor para executar comandos SQL, tanto os DML como os DDL
##################################################

tipo = input("Digite o tipo de usuário: ")
nome = input("Digite o seu nome: ")
email = input("Digite o seu email: ")
senha = input("Digite a sua senha: ")

comando_sql = """INSERT INTO Usuarios (tipo, nome, email, senha) VALUES (?,?,?,?)"""
valores = [tipo, nome, email, senha]
cursor.execute(comando_sql, valores)

##################################################
conexao.commit() # A função “commit”, associada à variável “conexao”, chamada logo em seguida, 
                 # serve para efetivamente salvar as alterações realizadas no banco de dados. 
conexao.close()  # é chamada para fechar a conexão