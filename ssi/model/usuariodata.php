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
    
function listar_consultas_especialidad_ano($ano,$especialidad){
        $sql = "SELECT YEAR(citamedica.fechacita) as ano , count(citamedica.idmedico) as total FROM consultamedica inner join citamedica on citamedica.idcita=consultamedica.idcita inner join medico on medico.idmedico=citamedica.idmedico inner join especialidad on especialidad.idespecialidad=medico.idespecialidad WHERE YEAR(citamedica.fechacita) >= '$ano' and especialidad.idespecialidad=$especialidad GROUP by YEAR(citamedica.fechacita)";
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

function listar_medicinas_vendidas(){
    $sql = "SELECT medicina.nombre,COUNT(consultamedica.idmedicina) as total from consultamedica inner join medicina on medicina.idmedicina=consultamedica.idmedicina group by consultamedica.idmedicina order by COUNT(consultamedica.idmedicina) DESC LIMIT 10";
    $arreglo = array();

    if ($consulta = $this->conexion->conexion->query($sql)) {

        while ($consulta_VU = mysqli_fetch_array($consulta)) {
             
            $arreglo[] =$consulta_VU;
        }

        return $arreglo;
    }
}


function listar_especialidad(){
    $sql = "SELECT especialidad.idespecialidad,especialidad.nombreespecialidad FROM especialidad";
    $arreglo = array();

    if ($consulta = $this->conexion->conexion->query($sql)) {

        while ($consulta_VU = mysqli_fetch_array($consulta)) {
             
            $arreglo[] =$consulta_VU;
        }

        return $arreglo;
    }
}

function listar_medicina(){
    $sql = "SELECT medicina.idmedicina,medicina.nombre from medicina";
    $arreglo = array();

    if ($consulta = $this->conexion->conexion->query($sql)) {

        while ($consulta_VU = mysqli_fetch_array($consulta)) {
             
            $arreglo[] =$consulta_VU;
        }

        return $arreglo;
    }
}

function listar_medico(){
    $sql = "SELECT medico.idmedico, concat(medico.nombre,' ',medico.appaterno,' ',medico.apmaterno) as medico from medico";
    $arreglo = array();

    if ($consulta = $this->conexion->conexion->query($sql)) {

        while ($consulta_VU = mysqli_fetch_array($consulta)) {
             
            $arreglo[] =$consulta_VU;
        }

        return $arreglo;
    }
}

function listar_enfermedad(){
    $sql = "SELECT enfermedad.idenfermedad,enfermedad.nombre FROM enfermedad";
    $arreglo = array();

    if ($consulta = $this->conexion->conexion->query($sql)) {

        while ($consulta_VU = mysqli_fetch_array($consulta)) {
             
            $arreglo[] =$consulta_VU;
        }

        return $arreglo;
    }
}

function listar_consultas_especialidad(){
        $sql = "SELECT YEAR(citamedica.fechacita) as ano , count(citamedica.idmedico) as total FROM consultamedica inner join citamedica on citamedica.idcita=consultamedica.idcita inner join medico on medico.idmedico=citamedica.idmedico inner join especialidad on especialidad.idespecialidad=medico.idespecialidad  GROUP by YEAR(citamedica.fechacita)";
        $arreglo = array();

        if ($consulta = $this->conexion->conexion->query($sql)) {

            while ($consulta_VU = mysqli_fetch_array($consulta)) {
             
                $arreglo[] =$consulta_VU;
            
            }

            return $arreglo;
         
        }      
}

function listar_consultas_medicina(){
        $sql = "SELECT  YEAR(citamedica.fechacita) AS ano , count(medicina.idmedicina) as total FROM consultamedica inner join citamedica on citamedica.idcita=consultamedica.idcita inner join medicina on medicina.idmedicina=consultamedica.idmedicina GROUP BY  YEAR(citamedica.fechacita)";
        $arreglo = array();

        if ($consulta = $this->conexion->conexion->query($sql)) {

            while ($consulta_VU = mysqli_fetch_array($consulta)) {
             
                $arreglo[] =$consulta_VU;
            
            }

            return $arreglo;
         
        }      
}

function listar_consultas_medicina_ano($ano,$medicina){
        $sql = "SELECT  YEAR(citamedica.fechacita) AS ano , count(medicina.idmedicina) as total FROM consultamedica inner join citamedica on citamedica.idcita=consultamedica.idcita inner join medicina on medicina.idmedicina=consultamedica.idmedicina where citamedica.fechacita >='$ano' and medicina.idmedicina=$medicina  GROUP BY  YEAR(citamedica.fechacita)";
        $arreglo = array();

        if ($consulta = $this->conexion->conexion->query($sql)) {

            while ($consulta_VU = mysqli_fetch_array($consulta)) {
             
                $arreglo[] =$consulta_VU;
            
            }

            return $arreglo;
         
        }      
}
   
function listar_consultas_enfermedad(){
        $sql = "SELECT  YEAR(citamedica.fechacita) AS ano , count(consultamedica.idenfermedad) as total FROM consultamedica inner join citamedica on citamedica.idcita=consultamedica.idcita inner join enfermedad on enfermedad.idenfermedad= consultamedica.idenfermedad GROUP BY  YEAR(citamedica.fechacita)";
        $arreglo = array();

        if ($consulta = $this->conexion->conexion->query($sql)) {

            while ($consulta_VU = mysqli_fetch_array($consulta)) {
             
                $arreglo[] =$consulta_VU;
            
            }

            return $arreglo;
         
        }      
}

function listar_consultas_enfermedad_ano($ano,$enfermedad){
        $sql = "SELECT  YEAR(citamedica.fechacita) AS ano , count(consultamedica.idenfermedad) as total FROM consultamedica 
		inner join citamedica on citamedica.idcita=consultamedica.idcita 
	   inner join enfermedad on enfermedad.idenfermedad= consultamedica.idenfermedad 
	   where YEAR(citamedica.fechacita) >='$ano' and enfermedad.idenfermedad= $enfermedad GROUP BY  YEAR(citamedica.fechacita)";
        
		$arreglo = array();

        if ($consulta = $this->conexion->conexion->query($sql)) {

            while ($consulta_VU = mysqli_fetch_array($consulta)) {
             
                $arreglo[] =$consulta_VU;
            
            }

            return $arreglo;
         
        }      
}
   
function listar_consultas_cita(){
        $sql = "SELECT  YEAR(citamedica.fechacita) AS ano ,count(citamedica.idcita) as total from citamedica  GROUP BY  YEAR(citamedica.fechacita)";
        $arreglo = array();

        if ($consulta = $this->conexion->conexion->query($sql)) {

            while ($consulta_VU = mysqli_fetch_array($consulta)) {
             
                $arreglo[] =$consulta_VU;
            
            }

            return $arreglo;
         
        }      
}

function listar_consultas_cita_mes($ano){
        $sql = "SELECT (CASE month(citamedica.fechacita)
                WHEN 1 THEN 'Enero'
                when 2 then 'Febrero'
                WHEN 3 THEN 'Marzo' 
                WHEN 4 THEN 'Abril' 
                WHEN 5 THEN 'Mayo' 
                WHEN 6 THEN 'Junio' 
                WHEN 7 THEN 'Julio' 
                WHEN 8 THEN 'Agosto' 
                WHEN 9 THEN 'Setiembre' 
                WHEN 10 THEN 'Octubre'
                WHEN 11 THEN 'Noviembre'
                WHEN 12 THEN 'Diciembre' 
                end) as mes, COUNT(citamedica.idcita) as total  from citamedica where  YEAR(citamedica.fechacita)='$ano' GROUP by  MONTH(citamedica.fechacita)";
        $arreglo = array();

        if ($consulta = $this->conexion->conexion->query($sql)) {

            while ($consulta_VU = mysqli_fetch_array($consulta)) {
             
                $arreglo[] =$consulta_VU;
            
            }

            return $arreglo;
         
        }      
}

function listar_consultas_medico(){
        $sql = "SELECT year(citamedica.fechacita) as ano,count(citamedica.idmedico)as total  from consultamedica inner join citamedica on citamedica.idcita=consultamedica.idcita inner join medico on medico.idmedico=citamedica.idmedico GROUP by  year(citamedica.fechacita)";
        $arreglo = array();

        if ($consulta = $this->conexion->conexion->query($sql)) {

            while ($consulta_VU = mysqli_fetch_array($consulta)) {
             
                $arreglo[] =$consulta_VU;
            
            }

            return $arreglo;
         
        }      
}

function listar_consultas_medico_ano($ano,$medico){
        $sql = "SELECT year(citamedica.fechacita) as ano,count(citamedica.idmedico)as total  from consultamedica inner join citamedica on citamedica.idcita=consultamedica.idcita inner join medico on medico.idmedico=citamedica.idmedico  where YEAR(citamedica.fechacita) >='$ano' and medico.idmedico= $medico GROUP by  year(citamedica.fechacita)";
        $arreglo = array();

        if ($consulta = $this->conexion->conexion->query($sql)) {

            while ($consulta_VU = mysqli_fetch_array($consulta)) {
             
                $arreglo[] =$consulta_VU;
            
            }

            return $arreglo;
         
        }      
}

function listar_usuarios(){
        $sql = "SELECT idusuario,userid,userpassword,concat(nombres,' ',apellidos) as nombres,rol,estado FROM usuario";
        $arreglo = array();

        if ($consulta = $this->conexion->conexion->query($sql)) {

            while ($consulta_VU = mysqli_fetch_array($consulta)) {
             
                $arreglo[] =$consulta_VU;
            
            }

            return $arreglo;
         
        }      
}



}


?>