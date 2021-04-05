<?php
include "../cabecera.inc.php";

include "../conexion.inc.php";
//$resultado = mysqli_query($conex, "select * from usuario");
echo "<br>";

?>
<style type="text/css">
	.azul{
		background: #3D40B1;
	color: #FFFFFF;
	}
</style>
<div class="azul">
<h1>Azul</h1>
<table border="2px">
<tr>
	<td>CI</td>
	<td>Usuario</td>
	<td>Password</td>
	<td>Color</td>
</tr>
<?php
$ci        = $_GET["ci"];
$colorcito = "select * from usuario where ci='$ci'";
$r         = mysqli_query($conex, $colorcito);

while ($col = mysqli_fetch_array($r)) {
    echo "<tr>";
    echo "<td>$col[ci]</td>";
    echo "<td>" . $col["usuario"] . "</td>";
    echo "<td>$col[passwordd]</td>";
    echo "<td>$col[color]</td>";
}
?>
</table>

<?php
$codigo = "select * from persona where ci='$ci'";
$res    = mysqli_query($conex, $codigo);
$de     = mysqli_fetch_array($res);
//print_r($de);
$nom = $de[1];
echo "<h3>La nota de $nom </h3>";
//echo "$nom";
$codigoNotas = "select * from nota where ci='$ci'";
$res1        = mysqli_query($conex, $codigoNotas);
//colocar en una array
?>
<table border="3px">
<tr>
	<td>CI</td>
	<td>Sigla</td>
	<td>Nota1</td>
	<td>Nota2</td>
	<td>Nota3</td>
	<td>Nota Final</td>
</tr>
<?php
while ($de1 = mysqli_fetch_array($res1))
//while ($fila = mysqli_fetch_array($resultado))
{
    echo "<tr>";
    echo "<td>$de1[ci]</td>";
    echo "<td>$de1[sigla]</td>";
    echo "<td>$de1[nota1]</td>";
    echo "<td>$de1[nota2]</td>";
    echo "<td>$de1[nota3]</td>";
    echo "<td>$de1[notafinal]</td>";

    echo "</tr>";
}
?>
</table>
</div>
<?php
include "../pie.inc.php";
?>