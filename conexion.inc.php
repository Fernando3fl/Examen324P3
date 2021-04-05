<?php
//variable de conexion
$conex = mysqli_connect("localhost", 'usuario', '123456');
//seleccionar la base de datos a usar
mysqli_select_db($conex, "mibase");
//$resultado = mysqli_query($conex, "select * from usuario");
//print_r($resultado);
//$de = mysqli_fetch_array($resultado);
//print_r($de);
?>
<br>
