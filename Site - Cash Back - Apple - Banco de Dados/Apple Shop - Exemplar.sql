<?php
// Conexão com o banco de dados (substitua os valores conforme necessário)
$servername = "localhost";
$username = "seu_usuario";
$password = "sua_senha";
$dbname = "seu_banco_de_dados";

// Dados do formulário de login
$email = $_POST['email'];
$password = $_POST['senha'];

// Verificar a unidade com base no domínio do e-mail (exemplo)
if (strpos($email, 'unidade1.com') !== false) {
    $tabela = "vendedores_01";
} elseif (strpos($email, 'unidade2.com') !== false) {
    $tabela = "vendedores_02";
} else {
    echo "E-mail inválido";
    exit();
}

// Consulta SQL para verificar as credenciais
$sql = "SELECT * FROM $tabela WHERE email = '$email' AND senha = '$password'";

// Executar a consulta
$result = mysqli_query($conn, $sql);

// Verificar se o usuário foi encontrado
if (mysqli_num_rows($result) > 0) {
    // Login bem-sucedido
    echo "Login bem-sucedido";

    // Aqui você pode redirecionar o usuário para a página relevante com base na unidade
    // Exemplo: header("Location: dashboard.php?unidade=$tabela");

} else {
    // Login falhou
    echo "Credenciais inválidas";
}

// Fechar conexão
mysqli_close($conn);
?>
