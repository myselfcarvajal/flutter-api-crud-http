<?php

session_start(); /*Add credentials*/
$host = ""; /* equipo */
$user = ""; /* usuario */
$password = ""; /* clave */
$dbname = ""; /* base de datos */

$con = mysqli_connect($host, $user, $password,$dbname);

if (!$con) {
  die("Connection failed: " . mysqli_connect_error());
}
//echo "Conexion Exitosa";

?>

