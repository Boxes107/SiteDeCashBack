import mysql.connector

# Configurações de conexão com o banco de dados
config = {
  'user': 'seu_usuario',
  'password': 'sua_senha',
  'host': 'localhost',
  'database': 'seu_banco_de_dados',
  'raise_on_warnings': True
}

try:
    # Cria uma conexão com o banco de dados
    conexao = mysql.connector.connect(**config)

    if conexao.is_connected():
        print('Conexão bem-sucedida ao banco de dados')

        # Aqui você pode executar suas consultas ou comandos SQL
        # Por exemplo:
        cursor = conexao.cursor()
        cursor.execute("SELECT * FROM sua_tabela")
        rows = cursor.fetchall()
        
        for row in rows:
            print(row)

except mysql.connector.Error as err:
    print("Erro ao conectar ao banco de dados:", err)

finally:
    # Fecha a conexão
    if 'conexao' in locals() and conexao.is_connected():
        cursor.close()
        conexao.close()
        print("Conexão fechada com o banco de dados")
