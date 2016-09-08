createCaptcha = function(){
	if($('#evento-overview').length && $('form input[type=submit]').length){
		$('form input[type=submit]').before('<div id="captcha"></div>');
		//captcha de formularios de reservacion
		grecaptcha && grecaptcha.render('captcha', {
          'sitekey' : '6LdPIwoTAAAAANQWG0PEVfnYE45N_o1p3PnRkA82',
		  'theme': "clean",
		  'callback': function(){
			$('input[name=recaptcha_response_field]').attr('required', 'required');
		  }
        });
		
		/*Recaptcha && Recaptcha.create("6Lc5QfgSAAAAAGTpFjWX9HrQ6yvv1XVOlnCPA1Kv",
			"captcha",
			{
			  theme: "clean",
			  callback: function(){
				$('input[name=recaptcha_response_field]').attr('required', 'required');
			  }
			}
		);*/
	}
	

	
};

mostrarSelectorCiudad = function(modalidad) {
	var pais = $('.botonera_home a.pais_activo').attr('data-pais');

	if (modalidad == undefined) {
		modalidad = $('div#home-modalidad label.active input').val();
	}

	if (pais == 'btn_ve' && modalidad == 'tab_val') {
		$('#home-ciudades').css('display', 'inline-block');
	} else {
		$('#home-ciudades').css('display', 'none');
	}
};

cargarEventos = function(pais, modalidad, ciudad) {
	$('#loading-events').css('display', 'block');
	$("#container-home-eventos").html('');

	if (pais == undefined) {
		pais = $('.botonera_home a.pais_activo').attr('data-pais');
	}

	if (modalidad == undefined) {
		modalidad = $('div#home-modalidad label.active input').val();
	}

	if (ciudad == undefined) {
		ciudad = $('div#home-ciudades label.active input').val();
	}

	$.post(base_url + "site/get_proximos_eventos_home/"+pais+"/"+modalidad+"/"+ciudad, function(data) {
		$("#container-home-eventos").html(data);
		$('#loading-events').css('display', 'none');
	});
};

$(function() {
	// Genericos
	$('.jq-ui-button').button();
	$("form.jqtransform").jqTransform();
	//$('#clientes_ve').slideshow({timeout:4000,fadetime:1500,type:'sequence',pauselink:false});
	//$('#clientes_pa').slideshow({timeout:4000,fadetime:1500,type:'sequence',pauselink:false});

	//alphanumerics genericos:
	$('input.numeric').alphanumeric();
	$('input.alpha').alpha();
	$('input.alpha_sp').alpha({allow:' '});
	$('input.alphanumeric').alphanumeric();
	$('input.alphanumeric_sp').alphanumeric({allow:' '});
	$('input.email').alphanumeric({allow:'_.@-'});

	// Botonera paises home
	$('.botonera_home a').click(function(ev){
		ev.preventDefault();
		$('.botonera_home a').removeClass('pais_activo');
		var tab = $(this).addClass('pais_activo');
		$.post(base_url+'site/set_tab_pais/'+tab.attr('data-pais'));
		$('#eventos_en_home').html($(this).attr('title'));

		mostrarSelectorCiudad();
		cargarEventos(tab.attr('data-pais'));
	});

	$('input[type="radio"][name="modalidad"]').on('change', function(ev) {
		ev.preventDefault();

		$.post(base_url+'site/set_tab_ciudad/'+$(this).val());

		mostrarSelectorCiudad($(this).val());
		cargarEventos(undefined, $(this).val());
	});

	$('input[type="radio"][name="ciudad"]').on('change', function(ev) {
		ev.preventDefault();

		$.post(base_url+'site/set_tab_ciudad/'+$(this).val());
		cargarEventos(undefined, undefined, $(this).val());
	});

	//botonera paises sidebar 
	$('div#botonera_paises a').on('click', function(ev){
        ev.preventDefault();
		$('div#botonera_paises a').removeClass('current');
		$('div#proximos_eventos ul').hide();
		var tab = $(this).addClass('current').blur();
		$(tab.attr('href')).show();
		$.post(base_url+'site/set_tab_pais/'+tab.attr('id'));
		$('#label_pais_seleccionado').html('<i class="fa fa-th-list"></i> ' + $(this).attr('title'));
	});



    //botonera latinoamerica
    $('div#botonera_paises #btn_la').click(function(ev){
        ev.preventDefault();

        var noEvents = $('#proximos_side_la .no_events').hide();

        if($('#proximos_side_la li:not(.no_events)').length == 0){
            noEvents.show();
        }
    });


	//menu presencia online panama
	$('div#tabs_panama a').click(function(ev){
		ev.preventDefault();

        var tab = $(this);

        //si el tab no esta seleccionado
        if(!tab.is('.current')){
            var eventTypes = {
							tab_online : 'ul#proximos_side_pa li.evt_online', 
							tab_presencial : 'ul#proximos_side_pa li.evt_presencial',
							tab_diplomado : 'ul#proximos_side_pa li.diplomados'},
                events =  $(eventTypes[tab.attr('id')]),
                noEvents = $('#proximos_side_pa .no_events').hide();
			//console.log(eventTypes[tab.attr('id')])
            $('div#tabs_panama a').removeClass('current');
            tab.addClass('current');

            //si no hay eventos
            if(events.length == 0){
                noEvents.show();
            }

            if(tab.attr("id") == "tab_presencial"){
                $("ul#proximos_side_pa li.evt_online").hide();
				$("ul#proximos_side_pa li.diplomados").hide();
                $("ul#proximos_side_pa li.evt_presencial").show();
            }else if(tab.attr("id") == "tab_online"){
                $("ul#proximos_side_pa li.evt_online").show();
				$("ul#proximos_side_pa li.diplomados").hide();
                $("ul#proximos_side_pa li.evt_presencial").hide();
            }else if(tab.attr("id") == "tab_diplomado"){
                $("ul#proximos_side_pa li.evt_online").hide();
                $("ul#proximos_side_pa li.evt_presencial").hide();
				$("ul#proximos_side_pa li.diplomados").show();
            }
        }
	});

	//menu presencia online Rep. Dominicana
	$('div#tabs_rd a').click(function(ev){
		ev.preventDefault();

        var tab = $(this);
		
        //si el tab no esta seleccionado
        //if(!tab.is('.current')){
            var id = tab.attr("id"),
				eventTypes = {
					tab_online : 'ul#proximos_side_rd li.evt_online', 
					tab_presencial : 'ul#proximos_side_rd li.evt_presencial',
					tab_diplomado : 'ul#proximos_side_rd li.diplomados'
				},
                events =  $(eventTypes[tab.attr('id')]),
                noEvents = $('#proximos_side_rd .no_events').hide();

            $('div#tabs_rd a').removeClass('current');
            tab.addClass('current');

            //si no hay eventos
            if(events.length == 0){
                noEvents.show();
            }
			
            if( id == "tab_presencial"){
                $("ul#proximos_side_rd li.evt_online").hide();
				$("ul#proximos_side_rd li.diplomados").hide();
                $("ul#proximos_side_rd li.evt_presencial").show();
            }else if(id == "tab_online"){                
				$("ul#proximos_side_rd li.diplomados").hide();
                $("ul#proximos_side_rd li.evt_presencial").hide();
				$("ul#proximos_side_rd li.evt_online").show();
            }else if(id == "tab_diplomado"){
                $("ul#proximos_side_rd li.evt_online").hide();
                $("ul#proximos_side_rd li.evt_presencial").hide();
				$("ul#proximos_side_rd li.diplomados").show();
            }
        //}
	});


	$('div #tabs_ciudad span').click(function(){
		$(".tab-ciudad").toggle("slow");
	});

    $('div#tabs_ciudad a').click(function(){
        $('div#tabs_ciudad a').removeClass('current');
        var eventTypes = {
				tab_online : 'ul#proximos_side_ve li.online',
				tab_diplomado : 'ul#proximos_side_ve li.diplomados',
				tab_val : 'ul#proximos_side_ve li.valencia',
				tab_csc : 'ul#proximos_side_ve li.caracas',
				tab_bto : 'ul#proximos_side_ve li.barquisimeto',
            },
            tab = $(this).addClass('current'),
            id = tab.attr("id"),
            noEvents = $('#proximos_side_ve .no_events').hide();
            key = null;

        if(id == "tab_online" || id == "tab_diplomado"){
        	$(".tab-ciudad").hide("slow");
        }

        for( key in eventTypes){
        	//console.log(key);
           if(key != id){
               $(eventTypes[key]).hide();
           }else{
           	//console.log(eventTypes[key]);
               if($(eventTypes[key]).show().length == 0){
                   noEvents.show();
               }
           }
        }
//        if( id == "tab_val"){
//            $("ul#proximos_side_ve li.valencia").show();
//            $("ul#proximos_side_ve li.caracas").hide();
//            $("ul#proximos_side_ve li.online").hide();
//        }else if(id == "tab_csc"){
//            $("ul#proximos_side_ve li.caracas").show();
//            $("ul#proximos_side_ve li.valencia").hide();
//            $("ul#proximos_side_ve li.online").hide();
//        }else{
//            $("ul#proximos_side_ve li.online").show();
//            $("ul#proximos_side_ve li.valencia").hide();
//            $("ul#proximos_side_ve li.caracas").hide();
//        }
        $.post(base_url+'site/set_tab_ciudad/'+tab.attr('id'));
        return false;
    });

//	$('div#tabs_ciudad a').click(function(){
//		$('div#tabs_ciudad a').removeClass('current');
//		var tab = $(this).addClass('current');
//
//		$("ul#proximos_side_ve li.valencia,ul#proximos_side_ve li.caracas").toggle();
//
//		$.post(base_url+'site/set_tab_ciudad/'+tab.attr('id'));
//		return false;
//	});

	//Verificador Gold Membership
	var verificador = $("div#verificador_goldmember");
	var selector =  verificador.find("div#selector_pais");
	var boton_gold = $("div#boton_gold_membership_card img#boton_gold");
	boton_gold.click(function(){
		selector.parent().toggle("fold");
	});
	selector.find("img#ve").click(function(){
		selector.hide("fold", function(){
			verificador.find("div#solicitud_venezuela").show("fold");
		});
	});
	selector.find("img#pa").click(function(){
		selector.hide("fold", function(){
			verificador.find("div#solicitud_panama").show("fold");
		});
	});
	verificador.find("span.back_button").click(function(){
		$(this).parent().hide("fold", function(){
			selector.show("fold");
		});
	});


	/* H O M E P A G E */
	// slider primcipal
	$('div#slider').easySlider({auto:true,continuous:true,numeric:true,pause:4000});

	// sliders escuelas (seteados individualmente para evitar que se cruzen los controles)
	var opcionesSlidersEscuelas = {auto:true,continuous:true,numeric:false,pause:4500,prevText:'&nbsp;',nextText:'&nbsp;'};
	$('.sliders_escuelas_home').each(function(index,el) {
		var ops = opcionesSlidersEscuelas;
		ops.prevId = 'prev_'+$(el).attr('id'); 
		ops.nextId = 'next_'+$(el).attr('id'); 
		$(el).easySlider(ops);
	});

	$("img.lazy").lazyload({effect:"fadeIn"});

	// Cargar .notas al hacer scroll
	$('div#notas_extra').waypoint(function() {
		$('#notas_extra')
			.html('<p><img alt="Cargando" src="'+base_url+'img/icons/ajax_load.gif"><br>Cargando Mas Eventos...</p>')
			.load(base_url+'site/notas_after_scroll');
		},
		{offset:'100%',triggerOnce:true }
	);

	// TABS ver_evento:
	$(".tab_content").hide();
	$("ul.tabs").each(function(){
		$('li:first', this).addClass("active").show();
	})
	
	$(".tab_container").each(function(){
		$('.tab_content:first', this).show();
	})
	
	$("ul.tabs li").click(function() {
		$(this).parents('ul').find('li').removeClass("active");
		$(this).addClass("active");
		var activeTab = $(this).find("a").attr("href");
		//console.log($(activeTab).parents(".tab_container"))
		$(activeTab).parents(".tab_container").find(".tab_content").hide();
		
		$(activeTab).fadeIn();
		return false;
	});
	// -- tabs ver_evento inner links:
	$('a.innerLinkReservaciones').click( function() {
		$("ul.tabs li").removeClass("active");
		$('ul.tabs li a[href="#ev_reservaciones"]').parent().addClass("active");
		$(".tab_content").hide();
		$("div#ev_reservaciones").fadeIn();
		return false;
	});

	//Suscripcion Boletin
	//$('form#suscripcion_boletin input[placeholder]').placeholder();
	$('form#suscripcion_boletin button').click(function(ev) {
		ev.preventDefault();
		$('form#suscripcion_boletin').ajaxSubmit(function(response) {
			$('form#suscripcion_boletin div#response').html(response);
		});
	});

	//INCOMPANY :
	$('.showcase_categoria ul').hide();
	$('.showcase_categoria>a').click(function() {
		$($(this).attr('href')).toggle('fast');
		return false;
	});

    $('div#botonera_paises a.current').trigger('click');
    $('#tabs_ciudad a.current, #proximos_side_rd a.current').trigger('click');


    //Aviso al ususario del modo de reservacion
	$( "#ev_reservaciones" ).on("click",'.opciones_reserva', function(ev) {
		ev.preventDefault();
		tipo_res = $(this).attr("id");
		var self = $(this),
			process = function(tipo){
			if(tipo == "natural"){					
				$('div#reservacion').html('<p style="text-align:center;"><img alt="Cargando" src="/img/ajax_load.gif" alt="loading"></p>');
				$('div#reservacion').load( $( self ).attr('href'), function(){
					createCaptcha();
					var numAsistentes = $('[name=n_asistentes]', '#contenedor_n_asistentes').val();
					modelFilasAsistentes.set_n( parseInt(numAsistentes) );
					$("#reserv_nat").validate();					
				});
			}else{

				$("div#opciones_reservacion").hide("fold", function(){
					$("div#rif_reservacion_juridica").show("fold");
				});
			}
		};
		
		if(self.is('.no_confirm')){
			process(tipo_res);
		}else{
			var titles = { 
					'online' : 'A Distancia',
					'presencial' : 'Presencial'
				},
				modo_reserva = $("input:hidden[name=modo_reserva]").val().toLowerCase(),
				content = 'Usted realizará una reservación para el evento con modalidad "{modo_reserva}" (Persona {tipo_persona}). Está seguro que desea continuar?';
			
			$.prompt(content.replace('{modo_reserva}', titles[modo_reserva].toUpperCase()).replace('{tipo_persona}', tipo_res.toUpperCase()), {
				title: "Información",
				buttons: { "SI": true, "NO": false },
				submit: function(e,v,m,f){
					if(v == true){
						process(tipo_res);
					}				
				}
			});
		}
		
	});
	
	
});