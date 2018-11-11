<?php
$nombres= $_POST['nombres'];
$apellidos = $_POST['apellidos'];
$dni = $_POST['dni'];
$password = $_POST['password'];
$combo_rol= $_POST['combo_rol'];
$combo_estado=$_POST['combo_estado'];


include '../model/usuariodata.php';

$MC = new usuariodata();
$consulta = $MC->registrar_usuario($dni,$password,$nombres,$apellidos,$combo_rol,$combo_estado);
echo $consulta;
?>