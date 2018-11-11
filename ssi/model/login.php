<?php
class login {

	private $conexion;
	 function __construct()
    {
        require_once('conexiongeneral.php');
            $this->conexion = new conexiongeneral();
            $this->conexion->conectar();
    }



	
    function iniciarsession($usuario, $pass)
    {
        $sql = "SELECT * from usuario where usuario.userid='$usuario' and usuario.userpassword='$pass'";
    	
        $consulta = mysqli_query($this->conexion->conexion,$sql);
        $fila = mysqli_fetch_array($consulta);
            
        if(count($fila)>0)
        {
            
            return array("id"=>$fila["idusuario"], "user"=>$fila["userid"], "password"=>$fila["userpassword"], "nombres"=>$fila["nombres"],"apellidos"=>$fila["apellidos"],"rol"=>$fila["rol"], "estado"=>$fila["estado"]);
            
        }
        else
        { 
                 
           return array();
               
        	   
        }
    }
  
}
?>