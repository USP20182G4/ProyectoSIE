<?php
include '../model/usuariodata.php';
$buscar = $_POST['ano'];
$especialidad = $_POST['enfermedad'];

$MC = new  usuariodata();
$consulta = $MC->listar_consultas_enfermedad_ano($buscar,$especialidad);
echo json_encode($consulta);
?>