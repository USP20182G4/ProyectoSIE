
    <?php

    include "../model/usuariodata.php";
  
          $listacargo = new usuariodata();
           $data = $listacargo->listar_usuarios();
           echo json_encode($data);
 
 
 ?>