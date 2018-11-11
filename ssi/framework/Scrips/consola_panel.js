var nombres = ['Jose','Elias','Donato','Fernando','Carlos','Julio','Maria','Chloe'];
var pais = ['Mexico', 'España', 'Argentina', 'Chile', 'Colombia', 'Venezuela', 'Perú', 'Costa Rica'];
var color = ['Rojo','Verde','Amarillo','Blanco','Negro','Purpura','Gris','Naranja']


var accion = "<button class='btn btn-info editar'>Editar</button>&nbsp";
accion += "<button class='btn btn-danger eliminar'>Eliminar</button>";


var cadena = "<tr class='zen'><td><strong>Nombre</strong></td><td><strong>Pais</strong></td><td><strong>Color</strong></td><td></td></tr>";
for (var i = 0; i < nombres.length; i++) {
	cadena += "<tr><td>"+nombres[i]+"</td><td>"+pais[i]+"</td><td>"+color[i]+"</td><td>"+accion+"</td></tr>";
}

$("#tabla_listar").html(cadena);


function editar_datos(){
	$("#contenedor_edicion").empty();
}

$(".editar").click(function(){
	var datos = "";
	var arreglo = new Array();
	$(this).parents("tr").find("td").each(function(){
        datos+=$(this).html()+"\n";
        arreglo.push($(this).html()+"\n");
	});

	/*alert(arreglo);*/
	/*$("#contenedor_edicion").load('_php/subvistas/subvista_editar.php?data='+datos);*/
	/*Editar_cadena(arreglo[0],arreglo[1],arreglo[2]);*/
	Cargar('contenedor_principal','_php/subvistas/subvista_editar.php?nombre='+arreglo[0]+'&pais='+arreglo[1]+'&color='+arreglo[2]);

});


function Editar_cadena(dato1,dato2,dato3){
	var cadena = "<fieldset><legend>Editar</legend><div class='col-md-12 col-xs-12'>";
	cadena += "<div class='form-group col-md-4 col-xs-4'><label>Nombre</label>";
	cadena += "<input type='text' class='form-control' value="+dato1+"></div>";

	cadena += "<div class='form-group col-md-4 col-xs-4'><label>Pais</label>";
	cadena += "<input type='text' class='form-control' value="+dato2+"></div>";

	cadena += "<div class='form-group col-md-4 col-xs-4'><label>Color</label>";
	cadena += "<input type='text' class='form-control' value="+dato3+"></div>";
	cadena += "<button class='btn btn-success' onclick='editar_datos()'>Guardar</button><hr>";
	cadena += "</div></fieldset>";
	

	$("#contenedor_edicion").html(cadena);
}