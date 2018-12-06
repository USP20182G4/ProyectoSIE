
<?php
include '../model/usuariodata.php';


$MC = new  usuariodata();
$consulta = $MC->listar_consultas_especialidad();
echo json_encode($consulta);
?>



