<?php
class usuariodata {

	   private $conexion;
        
    function __construct()
    {
        require_once('conexiongeneral.php');
            $this->conexion = new conexiongeneral();
            $this->conexion->conectar();
    }




    function registrar_usuario($dni,$password,$nombres,$apellidos,$combo_rol,$combo_estado){
        $result= mysqli_query($this->conexion->conexion,"SELECT count(*)  as total FROM usuario where usuario.userid='$dni'");
        $row = mysqli_fetch_assoc($result);
        $numero = $row['total'];

        if($numero == 0){

            $sql = "INSERT INTO usuario(userid,userpassword, nombres,apellidos,rol,estado) VALUES ('$dni','$password','$nombres','$apellidos','$combo_rol','$combo_estado')";

            if ($resultado_1 = $this->conexion->conexion->query($sql)) {
             return 1;
            }
            else {
                return 0;
                break;
            }   
          
        }
        else{
            return  100;

        } 
    } 


  
    function listar_consultas_atendidas(){
        $sql = "SELECT CONCAT(medico.nombre,' ', medico.appaterno) AS medico, count(citamedica.idmedico) as total FROM `consultamedica` inner join citamedica on citamedica.idcita=consultamedica.idcita inner join medico on medico.idmedico=citamedica.idmedico group by medico.idmedico ORDER by  count(citamedica.idmedico) DESC";
        $arreglo = array();

        if ($consulta = $this->conexion->conexion->query($sql)) {

            while ($consulta_VU = mysqli_fetch_array($consulta)) {
             
                $arreglo[] =$consulta_VU;
             
      
            }

            return $arreglo;
         
        }

      
    }
    

 function listar_consultas_atendidas_ano($ano){
        $sql = "SELECT CONCAT(medico.nombre,' ', medico.appaterno) AS medico, count(citamedica.idmedico) as total FROM consultamedica inner join citamedica on citamedica.idcita=consultamedica.idcita inner join medico on medico.idmedico=citamedica.idmedico WHERE YEAR(citamedica.fechacita)= '$ano' group by medico.idmedico ORDER by  count(citamedica.idmedico) DESC";
        $arreglo = array();

        if ($consulta = $this->conexion->conexion->query($sql)) {

            while ($consulta_VU = mysqli_fetch_array($consulta)) {
             
                $arreglo[] =$consulta_VU;
             
      
            }

            return $arreglo;
         
        }

      
    }
    





 function listar_ano(){
        $sql = "SELECT YEAR(citamedica.fechacita) AS ano FROM consultamedica INNER join citamedica on citamedica.idcita=consultamedica.idcita GROUP BY YEAR(citamedica.fechacita)";
        
      $arreglo = array();
            if ($consulta = $this->conexion->conexion->query($sql)) {

                while ($consulta_VU = mysqli_fetch_array($consulta)) {
                    $arreglo[] = $consulta_VU;
                }
                return $arreglo;
                $this->conexion->cerrar();  
            }   
    }

}


?>