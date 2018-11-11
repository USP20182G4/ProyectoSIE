<script src="Scrips/consola_panel.js"></script>
<div class="panel panel-primary">
	<div class="panel-heading">
		<h3>Listar</h3>
	</div>
	<div class="panel-body">
		<div>
			<form class="form">
			  <div class="form-group">
			    <label class="sr-only">Buscar</label>
			    <input type="email" class="form-control" id="" placeholder="ingrese datos">
			  </div>
			  <div class="radio">
			    <label>
			      <input type="radio" name="combo"> Estado</label>
			    <label>
			      <input type="radio" name="combo"> RUC</label>
			  </div>
			  <button type="submit" class="btn btn-primary">Buscar</button>
			</form>
		</div>
		<hr>
		<div id="contenedor_edicion">
			
		</div>
		<hr>
		<div class="table-responsive">
			<table class="table table-bordered" id="tabla_listar">

			</table>
		</div>
	</div>
	<div class="panel-footer">
		
	</div>
</div>
