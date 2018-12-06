<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Clinica Juan Pablo II</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="../framework/bootstrap/css/bootstrap.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="../framework/dist/css/AdminLTE.css">
  <link rel="stylesheet" href="../framework/dist/css/skins/_all-skins.min.css">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <header class="main-header">
    <a href="#" class="logo">
      <span class="logo-mini"><b>J</b>P</span>
      <span class="logo-lg"><b>Juan</b> Pablo II</span>
    </a>
    <nav class="navbar navbar-static-top">
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="../framework/dist/img/avatar.png" class="user-image" alt="User Image">
              <span class="hidden-xs"></span>
            </a>
            <ul class="dropdown-menu">
              <li class="user-header">
                <img src="../framework/dist/img/avatar.png" class="img-circle" alt="User Image">

                <p>
                 
                  <small></small>
                </p>
              </li>
            
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Perfil</a>
                </div>
                <div class="pull-right">
                  <a href="#" class="btn btn-default btn-flat">Salir</a>
                </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <aside class="main-sidebar">
    <section class="sidebar">
      <div class="user-panel">
        <div class="pull-left image">
          <img src="../framework/dist/img/avatar.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Karen</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
    
      <ul class="sidebar-menu">
        <li class="header">Panel de Navegacion</li>
      
     
        <li class="treeview">
          <a href="#">
            <i class="fa fa-laptop"></i>
            <span>Usuario</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#" onclick="Cargar('contenedor_principal','regusuario.php')"><i class="fa fa-circle-o"></i> Registrar Usuario</a></li>
          <li><a href="#" onclick="Cargar('contenedor_principal','listusuario.php')"><i class="fa fa-circle-o"></i> Listar Usuario</a></li>
          </ul>
        </li>
     
         <li class="treeview">
          <a href="#">
            <i class="fa fa-laptop"></i>
            <span>Base de Pacientes</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#" onclick="Cargar('contenedor_principal','consultacitas.php')"><i class="fa fa-circle-o"></i> Reporte</a></li>
         
          </ul>
        </li>
         <li class="treeview">
          <a href="#">
            <i class="fa fa-laptop"></i>
            <span>Distribucion Medicinas</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#" onclick="Cargar('contenedor_principal','consultasmedicinas.php')"><i class="fa fa-circle-o"></i> Reporte </a></li>
        
          </ul>
        </li>
         <li class="treeview">
          <a href="#">
            <i class="fa fa-laptop"></i>
            <span>Identificando Enfermedades</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#" onclick="Cargar('contenedor_principal','consultasenfermedades.php')"><i class="fa fa-circle-o"></i> Reporte </a></li>
       
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> 
			<span>Experiencia Medicos</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#" onclick="Cargar('contenedor_principal','consultasatendidas.php')"><i class="fa fa-circle-o"></i> Reporte </a></li>
        
          </ul>
        </li>
           <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Especialidad Bandera</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#" onclick="Cargar('contenedor_principal','consultaespecialidad.php')"><i class="fa fa-circle-o"></i> Reporte </a></li>
          
          </ul>
        </li>
      </ul>
    </section>
  </aside>

  <!--INICIO DE CONTENDOR PRINCIPAL
  
  -->
  <div class="content-wrapper">
    <!-- Main content -->
    <section class="content" id="contenedor_principal">
      <!-- Default box -->
      <div class="row">
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3>Enfermedades</h3>

              <p>actuales y relevantes</p>
            </div>
            <div class="icon">
              <i class="ion ion-bag"></i>
            </div>
           <a href="#" class="small-box-footer" onclick="Cargar('contenedor_principal','consultasenfermedades.php')"  >Mas Informacion <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
    
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3>Experiencia</h3>

              <p>Medicos</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
            <a href="#" class="small-box-footer" onclick="Cargar('contenedor_principal','consultasatendidas.php')"  >Mas Informacion <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>

           <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-blue">
            <div class="inner">
              <h3>Especialidad</h3>

              <p> Bandera</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
            <a href="#" class="small-box-footer" onclick="Cargar('contenedor_principal','consultaespecialidad.php')"  >Mas Informacion <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              <h3>Base de</h3>

              <p>Pacientes</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
            <a href="#" class="small-box-footer" onclick="Cargar('contenedor_principal','consultacitas.php')"  >Mas Informacion <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>

           <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-purple">
            <div class="inner">
              <h3>Medicinas</h3>

              <p>Distribucion</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
            <a href="#" class="small-box-footer" onclick="Cargar('contenedor_principal','consultasmedicinas.php')"  >Mas Informacion <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
      <!-- /.box -->
    </section>
    <!-- /.content -->
  </div>
  <!--FIN DE CONTENDOR PRINCIPAL-->



  <div class="control-sidebar-bg"></div>
</div>

<script src="../framework/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="../framework/bootstrap/js/bootstrap.js"></script>
<script src="../framework/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="../framework/plugins/fastclick/fastclick.js"></script>
<script src="../framework/dist/js/app.min.js"></script>
<script src="../framework/dist/js/demo.js"></script>
<script src="../framework/assets/js/Chart.js"></script>
<script>
  function Cargar(div,archivo){
    $("#"+div).load(archivo);
  }
</script>
<style>
  tr.zen{
    background-color: #337ab7;
    color: #fff;
  }
</style>
</body>
</html>
