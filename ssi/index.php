
<?php 
session_start();
require "model/conexionbd.php";

include "controlador/logincontroller.php";

?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SAN PABLO II | Login</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="framework/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="framework/dist/css/AdminLTE.min.css">
  <!--<link rel="stylesheet" href="recursos/dist/css/estilo_login.css">-->
 <link rel="stylesheet" href="framework/plugins/iCheck/square/blue.css">

</head>
<body >
<div class="login-box">
 
     <div class="card card-container">
  
    <p id="profile-name" class="profile-name-card"> <h3> <a><b>CLINICA SAN PABLO II</b> </a> </h3> </p>
            
 
 <form action="#" method="post">
    <div class="form-group has-feedback">
        <input type="text" class="form-control" placeholder="user" id="usuario" name="usuario">
        <span class="glyphicon glyphicon-text form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Password" id="password" name="password">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
            <button href="#" data-toggle="modal" data-target=".bd-example-modal-sm"  class="btn btn-danger btn-block btn-flat">Recuperar Contraseña</button><br>
           
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" class="btn btn-danger btn-block btn-flat" name="submit">Iniciar sesion</button>
           </div>
        <!-- /.col -->
      </div>

      <?php 
      if($formlogin_message!=""){
        ?>
        <div class="row">
        <div class="col-xs-12"><?php echo $formlogin_message; ?></div>
        </div>
        <?php
      }
      ?>
 </form>
    
  

  </div>
  <!-- /.login-box-body -->
  </div>
 



<script src="framework/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="framework/bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="framework/plugins/iCheck/icheck.min.js"></script>

<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>
</body>

<style type="text/css"> body {
  background-image: url('framework/images/fondo-nuestro-bar-big.jpg') ;
   background-repeat: no-repeat;
-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;
}</style>


</html>
