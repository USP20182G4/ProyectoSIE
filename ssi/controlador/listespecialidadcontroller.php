    <?php

    include "../model/usuariodata.php";
  
          $listacargo = new usuariodata();
           $data = $listacargo->listar_especialidad();
           echo json_encode($data);
 
 
 ?>