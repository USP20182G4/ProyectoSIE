


        <!-- Main content -->
     <section class="content">

  <div class="panel panel-primary">
    <div class="panel-heading">
      <small>Graficos Estadisticos</small>
    </div>
     
    <div class="panel-body">

      <form class="form-horizontal" id="formulario_usuario" action="javascript:registrar_personal();">
          
                <div class="form-group">

                  <label  class="col-sm-1 control-label"> Medicos</label>
                 
                  <div class="col-sm-2">
                    <select name="combo_medico" id="combo_medico" class="form-control cumple">
                        
                    </select>
                  </div>
                 
                  <label  class="col-sm-1 control-label">Seleccionar año</label>
                 
                  <div class="col-sm-2">
                    <select name="combo_cargo" id="combo_ano" class="form-control cumple">
                    </select>
                  </div>

                    <label  class="col-sm-1 control-label">Cantidad Excelente de Consultas </label>
                     
                    <div class="col-sm-2">
                        <input type="number" name="excelente" class="form-control validacion" value="0" id="excelente" readonly="true" >
                    </div>
                    <label  class="col-sm-1 control-label">Cantidad Aceptable de Consultas </label>
                     
                    <div class="col-sm-2">
                        <input type="number" name="bueno" class="form-control validacion" value="0" id="bueno"  readonly="true">
                    </div>
                        
                 
                </div>
           
                 <div class="box-footer text-center">
                  <label  class="col-sm-12 label label-danger" id="msg"></label>
                  <button type="button" onclick="validar_indicador_consultas();" class="btn btn-success ">Buscar&ensp;<i  class="glyphicon glyphicon-floppy-search" aria-hidden="true"></i></button>  
                </div>
          
            </form>


      <div class="col-sm-8"  id="contenedor_marca">
        <p><b>Reconocomiento de la Experiencia de los Medicos </b></p>
        <canvas id="producto_marca" width="200" height="300"></canvas>
      </div>
       <div class="col-sm-4" align="center" id="semaforo">
      
      
        </div>

    </div>
  </div>
    </section>

   <script type="text/javascript" src="../framework/Scrips/consola_usuario.js"></script>
    <script>
    	$(document).ready(function(){
        combo_medico();
        combo_ano_medico();
    		Listar_consultas_medico();

    	})
    </script>

      <script type="text/javascript">
        $("#combo_ano").on("change", function(){  
           document.getElementById('excelente').readOnly=false;
            document.getElementById('bueno').readOnly=false; 
            $("#excelente").val("0");
            $("#bueno").val("0");
        });

        $("#combo_medico").on("change", function(){  
        
            combo_ano_medico();
      document.getElementById('excelente').readOnly=true;
      document.getElementById('bueno').readOnly=true; 
      $("#excelente").val("0");
      $("#bueno").val("0");
        });
      </script>





<style>
  .cir {
    border: 1px soli gray;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    display: block;
  }
  .cir-red {
    background: red;
  }
  .cir-yellow {
    background: yellow;
  }
  .cir-green {
    background: green;
  }
</style>

