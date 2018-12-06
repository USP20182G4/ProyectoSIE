    <section class="content-header ">
          <h1>
            Lista de Usuarios
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
            <li class="active">Inicio</li>
          </ol>

    </section>

        <!-- Main content -->
     <section class="content">

    <div class="row">
     <div class="col-md-12">
            <div class="box box-primary">
           
            <div class="alert alert-success alert-dismissible ocultar" id="notificacion_exito">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            </div>
            <div class="alert alert-danger alert-dismissible ocultar" id="notificacion_error">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            </div>
             
   
     <form class="form-horizontal" id="formulario_usuario">
              <div class="box-body">
                <!--Mensaje de registro-->
            


              </div>
            
            </form>
      
            <div class="col-md-12 col-lg-12 col-xs-12">
                <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th class="info">ID</th>
                      <th class="info">Usuario</th>
                      <th class="info">Contraseña</th>
                      <th class="info">Nombre y Apellidos</th>
                     <th class="info">Rol</th>
                      <th class="info">Estado</th>
             
                    </tr>
                  </thead>
                  <tbody id="tbody_lista_usuarios">
                  </tbody>
                </table>
            </div> 

            
            <div class="box-footer"></div>
          
             </div>
             </div>
        </div>
         </div>
    </section>

    <style type="text/css" media="screen">
      .ocultar{
        display: none;
      }
    </style>
    <script type="text/javascript" src="../framework/Scrips/consola_usuario.js"></script>
    <script>
      $(document).ready(function(){
        Listar_Usuarios();

      })
    </script>

    <style type="text/css">
     .tamaño_imagen{
            height: 40px;
            width: 40px; 
        }

        td img.tamaño_imagen{
            margin:0px auto;
        }
    </style>
