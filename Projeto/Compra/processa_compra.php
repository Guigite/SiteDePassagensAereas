<?php
session_start();
include_once("../Cadastro/conexao.php");


$voo = filter_input(INPUT_POST, 'voo', FILTER_SANITIZE_STRING);
$cpf = filter_input(INPUT_POST, 'cpf', FILTER_SANITIZE_STRING);

$result_usuario = "INSERT INTO confirma (voo, cpf) VALUES  ('$voo','$cpf')";
$resultado_usuario = mysqli_query($conn, $result_usuario);


if(mysqli_insert_id($conn)){
  $_SESSION['msg'] = "<p> Compra realizada com sucessso!</p>";
  
  $_SESSION['compras'] = array();
  array_push($_SESSION['compras'],$voo);
  
  $_SESSION['ticket'] = "liberado";
  header("Location:../HomePage/home.php");
}else{
  $_SESSION['msg'] = "<p> Impossível realizar compra!</p>";
  header("Location:../Compra/confirmaCompra.php");
}

?>