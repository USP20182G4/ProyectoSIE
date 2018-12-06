   <?php

    include "../model/usuariodata.php";
  
          $listacargo = new usuariodata();
           $data = $listacargo->listar_enfermedad();
           echo json_encode($data);
 
 
 ?>