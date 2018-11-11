    <?php

    include "../model/usuariodata.php";
  
          $listacargo = new usuariodata();
           $data = $listacargo->listar_ano();
           echo json_encode($data);
 
 
 ?>