<?php
$usuario    = $_POST["Usuario"];
$contrasena = $_POST["contraseña"];
//inicio de sesion
session_start();
$_SESSION["usuario"] = $usuario;
//llamar a la bd
include 'conexion.inc.php';
$consulta  = "select ci from usuario where usuario='$usuario' and passwordd='$contrasena'";
$resultado = mysqli_query($conex, $consulta);

//metodo para almacenar resultados
$filas = mysqli_num_rows($resultado);

//print_r($filas);
$de        = mysqli_fetch_array($resultado);
$colorcito = "select color from usuario where usuario='$usuario' and passwordd='$contrasena'";
$r         = mysqli_query($conex, $colorcito);
$col       = mysqli_fetch_array($r);
print_r($de);

if ($filas) {
    print_r($col[0]);
    $colorB = $col[0];
    $rojo   = 'rojo';
    $cafe   = 'cafe';
    $azul   = 'azul';
    if (strcmp($colorB, $rojo) === 0) {
        header("location:./colores/rojo.php?ci=$de[0]");
    }
    if (strcmp($colorB, $azul) === 0) {
        header("location:./colores/azul.php?ci=$de[0]");
    }
    if (strcmp($colorB, $cafe) === 0) {
        header("location:./colores/cafe.php?ci=$de[0]");
    }

} else {
    ?>
<?php
include "login.php";
    ?>
<h1>Error en la autenticacion</h1>
<?php
}
mysqli_free_result($resultado);
mysqli_close($conex);
?>
<br>
