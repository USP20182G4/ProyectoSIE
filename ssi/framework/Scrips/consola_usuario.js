function registrar_usuario(){
	var dni = $("#dni").val();
	var nombres = $("#nombres").val();
	var apellidos = $("#apellidos").val();
	var password = $("#password").val();
	var combo_rol = $("#combo_rol").val();
	var combo_estado = $("#combo_estado").val();
	
	$.ajax({
		url:'http://localhost/karen/ssi/controlador/regusuariocontroller.php',
		type:'POST',
		data:{
		    dni:dni,
			nombres:nombres,
			apellidos:apellidos,
			password:password,
			combo_estado:combo_estado,
			combo_rol:combo_rol
		}
	})
	.done(function(resp){
		
		if (resp == 100) {
			$("#notificacion_error").removeClass("ocultar");
			$("#notificacion_error").append("<p><i class='icon fa fa-check'></i> usuario Agregado Ya Existe!</p>");
		}


		if (resp > 0  && resp <100) {
			$("#notificacion_exito").removeClass("ocultar");
			$("#notificacion_exito").append("<p><i class='icon fa fa-check'></i> usuario Agregado correctamente !</p>");
		}
		else{
			/*console.log("Error al registrar. ["+resp+"]");*/
			$("#notificacion_error").removeClass("ocultar");
			$("#notificacion_error").append("<p><i class='icon fa fa-check'></i>No se pudo registrar el usuario, intentelo mas tarde.</p>");
		}
	})
	.always(function(){
	
		});

}


function Listar_consultas_atendidas(){
	
		var cont = document.querySelector("#producto_marca");
		$.ajax({
			url: 'http://localhost/karen/ssi/controlador/conultasatendidascontroller.php',
			method: 'POST',
			data: {},
			success: function(resp){
				var data = JSON.parse(resp);
				var marcas = new Array();
				var color = new Array();
				var cantidad = new Array();
				for(let ma in data){
					
					marcas.push(data[ma]['medico']);
					cantidad.push(data[ma]['total']);
					if (data[ma]['total'] > 30){
						color.push('green');
					}
					else if ((data[ma]['total'] > 20) && (data[ma]['total'] <30) ){
						color.push('yellow');
					}
					else{
							color.push('red');
					}

				}

				var grafico = new Chart(cont, {
				    type: 'bar',
				    data: {
				        labels: marcas,
				        datasets: [{
				            label: 'Medicos que han logrado sus objetivos',
				            data: cantidad,
				            backgroundColor: color,
				            borderColor: color,
				            borderWidth: 1
				        }]
				    },
				    options: {
				        scales: {
				            yAxes: [{
				                ticks: {
				                    beginAtZero:true
				                }
				            }]
				        }
				    }
				});


			}
		});
	
}
function Listar_consultas_atendidas_ano(){
		var contenedor = document.querySelector("#contenedor_marca");
		if (document.querySelector("#producto_marca")) {
			contenedor.removeChild(document.querySelector("#producto_marca"));
		}

		var canvas_marca = document.createElement("CANVAS");
		canvas_marca.id = "producto_marca";
		contenedor.appendChild(canvas_marca);
		
		var combo_ano = $("#combo_ano").val();
		$.ajax({
			url: 'http://localhost/karen/ssi/controlador/conultasatendidasanocontroller.php',
			method: 'POST',
			data: {
               ano:combo_ano
			},
			success: function(resp){
				var data = JSON.parse(resp);
				var marcas = new Array();
				var color = new Array();
				var cantidad = new Array();
				for(let ma in data){
					
					marcas.push(data[ma]['medico']);
					cantidad.push(data[ma]['total']);
					if (data[ma]['total'] > 9){
						color.push('green');
					}
					else if ((data[ma]['total'] > 7) && (data[ma]['total'] <10) ){
						color.push('yellow');
					}
					else{
							color.push('red');
					}
				}
				var grafico = new Chart(canvas_marca, {
				    type: 'bar',
				    data: {
				        labels: marcas,
				        datasets: [{
				            label: 'Medicos que han logrado sus objetivos',
				            data: cantidad,
				            backgroundColor:color,
				            borderColor: color,
				            borderWidth: 1
				        }]
				    },
				    options: {
				        scales: {
				            yAxes: [{
				                ticks: {
				                    beginAtZero:true
				                }
				            }]
				        }
				    }
				});


			}
		});
	
}
function combo_ano(){

	$.ajax({
		url:'http://localhost/karen/ssi/controlador/listanocontroller.php',
		type:'POST',
		data:{}
	})
	.done(function(resp){
		var data = JSON.parse(resp);
		if (data.length > 0) {
			cadena = "";
			cadena += "<option value=''>"+"<<SELECCIONAR>>"+"</option>";
			for (var i = 0; i < data.length; i++) {

				
				cadena += "<option value='"+data[i][0]+"'>"+data[i][0]+"</option>";
				         
			}
			$("#combo_ano").html(cadena);
		}
		else{
			var cadena = "<option>No hay datos.</option>";
			$("#combo_ano").html(cadena);
		}
	})
	.fail(function( jqXHR, textStatus, errorThrown){
		if (jqXHR.status === 0) {

	    alert('Not connect: Verify Network.');

	  } else if (jqXHR.status == 404) {

	    alert('Requested page not found [404]');

	  } else if (jqXHR.status == 500) {

	    alert('Internal Server Error [500].');

	  } else if (textStatus === 'parsererror') {

	    alert('Requested JSON parse failed.');

	  } else if (textStatus === 'timeout') {

	    alert('Time out error.');

	  } else if (textStatus === 'abort') {

	    alert('Ajax request aborted.');

	  } else {

	    alert('Uncaught Error: ' + jqXHR.responseText);

	  }
	})
}

function limpiar_marca(){
		var cont_marca = document.querySelector("#producto_marca");
		var context = cont_marca.getContext('2d');
		
		
	}


