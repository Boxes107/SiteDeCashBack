<?php
function inserirDados($valor1, $valor2, $valor3) {
    // Dados de conexão com o banco de dados
    $servername = "localhost"; // Endereço do servidor MySQL
    $username = "root"; // Nome de usuário do MySQL
    $password = ""; // Senha do MySQL
    $database = "seu_banco_de_dados"; // Nome do banco de dados MySQL

    // Conexão com o banco de dados
    $conn = new mysqli($servername, $username, $password, $database);

    // Verifica a conexão
    if ($conn->connect_error) {
        die("Falha na conexão: " . $conn->connect_error);
    }

    // Exemplo de inserção de dados
    $sql = "INSERT INTO sua_tabela (coluna1, coluna2, coluna3) VALUES ('$valor1', '$valor2', '$valor3')";

    if ($conn->query($sql) === TRUE) {
        echo "Dados inseridos com sucesso";
    } else {
        echo "Erro ao inserir dados: " . $conn->error;
    }

    // Fecha a conexão
    $conn->close();
}
?>
