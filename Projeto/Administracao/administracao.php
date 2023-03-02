<?php
session_start();

if(isset($_SESSION['funcionario'])){
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/fc5a314633.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../assets/registro.css">
    <title>Administração</title>
</head>
<body>
    <div class="header">
        <h1><i class="fa-solid fa-plane-departure"></i>FourFLY</h1>    
        <a href="../Administracao/administracao.php" class="">Administração</a>
        <div class="item">
            <a href="lista_voos.php" class="">Lista de voos</a>
            <a href="registro_voos.php" class="">Registrar voos</a>
            <a href="../HomePage/destroy.php" class="texto">Fazer Logout</a>
        </div>
    </div>
</body>
</html>

<?php
}else{
    header("Location: ../HomePage/home.php");
}
?>