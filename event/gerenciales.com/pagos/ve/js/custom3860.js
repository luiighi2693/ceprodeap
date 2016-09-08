$(function(){
  window.createOverlay = function(){
    var loadingText = 'Cargando..';
    return $('<div/>').addClass('overlay').append(
              $('<div/>').addClass('message').text(loadingText)
            ).appendTo('body');
  };

  $(document).ajaxStart(function(){
    var overlay = $('.overlay').length ?
                    $('.overlay'):
                    window.createOverlay();
    
    overlay.fadeIn('fast');
  });
});