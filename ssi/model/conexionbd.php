
<?php

$DB_servidor = "localhost";
$DB_usuario = "root";
$DB_contrasena = "";
$DB_basedatos = "ssi";
// conectar a bd y almacenar instacia de conexión
$conexion = new mysqli($DB_servidor,$DB_usuario,$DB_contrasena,$DB_basedatos);
$conexion->set_charset("utf8");

?>