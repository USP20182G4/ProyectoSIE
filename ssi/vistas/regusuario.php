

<?php 
session_start();
require "../model/conexionbd.php";
?>
    <!-- Main content -->
<section class="content">
      <div class="alert alert-success alert-dismissible ocultar" id="notificacion_exito">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            </div>
            <div class="alert alert-danger alert-dismissible ocultar" id="notificacion_error">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            </div>
    <div class="row">
        <div class="col-md-12">
          <!-- Horizontal Form -->
          <div class="box box-info">
                  <div class="box-header with-border">
              <h3 class="box-title">Datos Usuario</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form class="form-horizontal" id="formulario_usuario" action="javascript:registrar_usuario();">
              <div class="box-body">
                <!--Mensaje de registro-->
              
                <!--Mensaje de registro-->
                <div class="form-group">
                 
                  <label  class="col-sm-2 control-label">Usuario</label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control validacion"  name="dni" value="" id="dni"   placeholder="dni">
                  </div>

                  <label  class="col-sm-2 control-label">Rol</label>
                  <div class="col-sm-4">
                    <select name="combo_rol" id="combo_rol" class="form-control cumple">
                      <option value="Administrador">Administrador</option>
                        <option value="Gerencial">Gerencial</option>
                     
                    </select>
                  </div> 
                </div>
                <div class="form-group">
                  <label  class="col-sm-2 control-label">Nombres</label>
                  <div class="col-sm-4">
                    <input type="text" name="nombres" class="form-control validacion" value="" id="nombres" placeholder="nombres" maxlength="50">
                  </div>
                    <label  class="col-sm-2 control-label">Apellidos</label>
                  <div class="col-sm-4">
                     <input type="text" name="apellidos" class="form-control validacion" value="" id="apellidos" placeholder="Apellidos" maxlength="50">
                  </div>
                </div>

                <div class="form-group">
                  <label  class="col-sm-2 control-label">Contraseña</label>
                  <div class="col-sm-4">
                    <input type="password" name="password" class="form-control validacion" value="" id="password" placeholder="password" maxlength="50">
                  </div>
                    <label  class="col-sm-2 control-label">Estado</label>
                  <div class="col-sm-4">
                    <select name="combo_estado" id="combo_estado" class="form-control cumple">
                    
                      <option value="Activo">Activo</option>
                        <option value="Inactivo">Inactivo</option>    
                     
                    </select>
                  </div>
                </div>



              </div>
              <!-- /.box-body -->
              <div class="box-footer text-center">
                <button type="submit"  class="btn btn-success "><i class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></i>&ensp; Registrar</button>
              </div>
              <!-- /.box-footer -->
            </form>
          </div>
          <!-- /.box -->
          <!-- /.box -->
        </div>
      
    </div><!--row-->

</section>
    <!-- /.content -->

  <script type="text/javascript" src="../framework/Scrips/consola_usuario.js"></script>
 
   <style type="text/css" media="screen">
  .ocultar{
    display:none;
  }
</style>

   

