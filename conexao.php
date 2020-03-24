<?php
$host = "localhost";// Geralmente Localhost
$usuario = "root";//usuário do seu banco de dados
$password = "";// senha do banco de dados
$banco = "softexpert";// tabela do banco de dadosa

$con=mysqli_connect($host,$usuario,$password, $banco) or die ('Conexão não realizada');
//mysqli_select_db($banco, $con) or die ('Banco não encontrado');
?>