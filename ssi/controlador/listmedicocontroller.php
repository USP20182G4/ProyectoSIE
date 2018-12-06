   <?php

    include "../model/usuariodata.php";
  
          $listacargo = new usuariodata();
           $data = $listacargo->listar_medico();
           echo json_encode($data);
 
 
 ?>