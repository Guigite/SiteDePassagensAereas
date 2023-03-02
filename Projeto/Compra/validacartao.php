<?php 

session_start();
include_once("../Cadastro/conexao.php");

$cpff = $_POST['cpf'];
$numeroC = $_POST['numero'];
$csc = $_POST['cvv'];
  
if(isset($_POST['numero'])) {  
  $qun = mysqli_query($conn, " SELECT * from registroc where CPF = '$cpff' and Numero = '$numeroC' and CSC = '$csc'");

  if (mysqli_num_rows($qun) == 1) {
    header("Location:../Compra/comprar.php");
  } else {
    $_SESSION['msg_senha'] = "<p>Cartão não encontrado!</p>";
    header("Location:validacartao.php");
  }
}
  
?>