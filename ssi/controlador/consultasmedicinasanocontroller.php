<?php
include '../model/usuariodata.php';
$buscar = $_POST['ano'];
$especialidad = $_POST['medicina'];

$MC = new  usuariodata();
$consulta = $MC->listar_consultas_medicina_ano($buscar,$especialidad);
echo json_encode($consulta);
?>