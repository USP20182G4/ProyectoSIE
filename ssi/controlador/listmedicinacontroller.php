    <?php

    include "../model/usuariodata.php";
  
          $listacargo = new usuariodata();
           $data = $listacargo->listar_medicina();
           echo json_encode($data);
 
 
 ?>