<?php
include '../model/usuariodata.php';
$buscar = $_POST['ano'];
$especialidad = $_POST['especialidad'];

$MC = new  usuariodata();
$consulta = $MC->listar_consultas_especialidad_ano($buscar,$especialidad);
echo json_encode($consulta);
?>