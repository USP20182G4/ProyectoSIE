<?php
include '../model/usuariodata.php';
$buscar = $_POST['ano'];

$MC = new  usuariodata();
$consulta = $MC->listar_consultas_atendidas_ano($buscar);
echo json_encode($consulta);
?>