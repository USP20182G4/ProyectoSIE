
<?php
include '../model/usuariodata.php';


$MC = new  usuariodata();
$consulta = $MC->listar_consultas_medicina();
echo json_encode($consulta);
?>



