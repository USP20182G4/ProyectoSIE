<?php
include '../model/usuariodata.php';
$buscar = $_POST['ano'];
$especialidad = $_POST['medico'];

$MC = new  usuariodata();
$consulta = $MC->listar_consultas_medico_ano($buscar,$especialidad);
echo json_encode($consulta);
?>