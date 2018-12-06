<?php
include '../model/usuariodata.php';

$MC = new  usuariodata();
$consulta = $MC->listar_medicinas_vendidas();
echo json_encode($consulta);
?>