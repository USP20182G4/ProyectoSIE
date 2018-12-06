

        <!-- Main content -->
     <section class="content">

    <div class="row">
     <div class="col-md-12">
            <div class="box box-info">
           
            <div class="alert alert-success alert-dismissible ocultar" id="notificacion_exito">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            </div>
            <div class="alert alert-danger alert-dismissible ocultar" id="notificacion_error">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            </div>
        <div class="box-body" >
      <div class="box-header with-border">
              <h3 class="box-title">Datos Personal</h3>
            </div>
      
          <label class="sr-only" for="exampleInputEmail3">Buscar</label>
          <input type="text" class="form-control" id="txtpersonal" placeholder="ingrese DNI">
          <br>
         <button type="button" class="btn btn-danger" href="#" onclick="Cargar('contenedor_principal','personal/regpersonal.php')" >Nuevo&ensp;<i class="glyphicon glyphicon-plus" aria-hidden="true"></i></button> 
         </div>
      
            
            <div class="col-md-12 col-lg-12 col-xs-12">
            		<table class="table table-bordered">
            			<thead>
            				<tr>
                  
            					<th class="info">ID</th>
            					<th class="info">DNI</th>
            					<th class="info">Nombres y Apellidos</th>
            					<th class="info">Email</th>
                      <th class="info">Direccion</th>
                      <th class="info">Telefono</th>
            					<th class="info">Cargo</th>
                      <th class="info">Evento</th>
            				</tr>
            			</thead>
            			<tbody id="tbody_lista_personal">
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
   <script type="text/javascript" src="../recursos/Scrips/consola_personal.js"></script>
    <script>
    	$(document).ready(function(){
    		Listar_Personal();

    	})
    </script>

   
    <script type="text/javascript">
       $("#txtpersonal").keyup(function(){
      var dato_buscar = $("#txtpersonal").val();
       filtrar_Personal(dato_buscar);
    });

    </script>

