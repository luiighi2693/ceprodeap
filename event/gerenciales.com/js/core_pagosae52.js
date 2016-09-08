$(function(){

	// jQueryUI Calls/Customs :
	$('.jqui-btn').button();
	$('.datepicker').datepicker();

	// Inputs Alpha/Numerics :
	$('input.numeric').numeric();
	$('input.numeric_float').numeric({allow:','});
	$('input.numeric_float_americano').numeric({allow:'.'});
	$('input.alpha').alpha();
	$('input.alpha_space').alpha({allow:' '});
	$('input.alphanumeric').alphanumeric();
	$('input.alphanumeric_space').alphanumeric({allow:' '});
	$('input.email').alphanumeric({allow:'_.@'});


	/*
	 *  P A N A M Á
	 */
	//forzar a marcar el checkbox terms y cond, antes de enviar el form a gateway
	$('form#al_gateway').submit(function(e) {
		
		if($('input#acepto_terminos_condiciones:checked').val()!='acepto_terminos_condiciones'){
			e.preventDefault();	
			alert('Para continuar debe marcar la casilla "Términos y Condiciones de Reservaciones y Politicas de Privacidad."');
		}

	});
	



	/*
	 *	V E N E Z U E L A
	 */


});