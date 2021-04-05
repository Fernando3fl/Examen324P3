<?php
include "cabecera.inc.php";
/*
if (isset($_GET['cerrar_sesion'])) {
session_unset();

session_destroy();
}

//verificar si hay sesion de rol
if (isset($_SESION['color'])) {
switch ($_SESION['color']) {
case 1:
header('location: cafe.php');
break;
case 2:
header('location: azul.php');
break;
case 3:
header('location: rojo.php');
break;
default:

//  break;
}
}
//autenticar a un usuario
$usuario     = $_POST["usuario"];
$contraseña = $_POST["contraseña"];
session_start();
$_SESION["usuario"] = $usuario;
include "conexion.inc.php";
$consulta  = "select * from usuario where usuario='$usuario' and passwordd='$contraseña'";
$resultado = mysqli_query($conex, $consulta);
//metodo para almacenar resultados
$filas = mysqli_num_rows($resultado);
if ($filas) {
header("location:cafe.php");
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

/*
if (isset($_POST['usuario']) && isset($_POST['contraseña'])) {
$usuario   = $_POST['usuario'];
$passwordd = $_POST['contraseña'];
$db        = new Database();
$codigo    = $db->connect()->prepare('select * from usuario where usuario=:usuario and passwordd=:passwordd');
$codigo->execute(['usuario' => $usuario, 'passwordd' => $passwordd]);
$row = $codigo->fetch(PDO::FETCH_NUM);

if ($row == true) {
//VALIDAR
} else {
//no existe usuario
echo "EL usuario o contraseña es incorrecto";
}
}
 */

?>

<div class="centro">
 <form action="validar.php" method="post">
   <h1>Sistema de login</h1>
   <p>Usuario :<br/>
   	<input type="text" placeholder="Ingrese su nombre" name="Usuario" class="form-control"></p>
   <p>Contraseña :<br/>
   	<input type="password" placeholder="Ingrese su contraseña" name="contraseña" class="form-control" ></p>
   <input type="submit" value="Iniciar sesi&oacute;n">

 </form>
 </div>
<?php
include "pie.inc.php";
?>