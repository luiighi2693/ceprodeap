$(function() {
   var contenido = $('#ev_contenido');
   contenido.find('dl dd').hide();
   contenido.find('dl dt').click(function(){
      if ($(this).hasClass('activo')) {
           $(this).removeClass('activo');
           $(this).nextUntil("dt").slideUp();
      } else {
           contenido.find('dl dt').removeClass('activo');
           $(this).addClass('activo');
           contenido.find('dl dd').slideUp();
           $(this).nextUntil("dt").slideDown();
      }
   });


 
 });