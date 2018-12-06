
<section class="content">

  <div class="panel panel-primary">
    <div class="panel-heading">
      <small>Medicinas</small>
    </div>
     
    <div class="panel-body">

      <form class="form-horizontal" id="formulario_usuario" action="javascript:registrar_personal();">
          
                <div class="form-group">
                 
                  <label  class="col-sm-2 control-label">Seleccionar año</label>
                 
                  <div class="col-sm-4">
                    <select name="combo_cargo" id="combo_ano" class="form-control cumple">
                        
                     
                    </select>
                  </div>
                 
                </div>
           
             
          
            </form>


      <div class="col-md-12"  id="contenedor_marca">
        <p><b>Total de Medicinas vendidas</b></p>
        <canvas id="producto_marca" width="600" height="400"></canvas>
      </div>
    </div>
  </div>
    </section>

   <script type="text/javascript" src="../framework/Scrips/consola_usuario.js"></script>
    <script>
    	$(document).ready(function(){

       
    		Listar_medicinas_vendidas();

    	})
    </script>

     <script type="text/javascript">

$("#combo_ano").on("change", function(){  
  var dato_buscar = $("#combo_ano").val();

       Listar_consultas_atendidas_ano(dato_buscar);
 });


    </script>





