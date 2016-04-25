(function($) {

  $('#Nav_Module').click(function(e){
    e.preventDefault();
    
    //supprime contenu de .div_article1, pour eviter duplicata si fonction appeler plusieurs fois d'affilé
    $('.div_article1').empty(); 
    $.post( "../App/bloc/Module.php",
      function(data) {
        $('.div_article1').append(data);
      }
    );
  });

  $('#Nav_Depots').click(function(e){
    e.preventDefault();

    //supprime contenu de .div_article1, pour eviter duplicata si fonction appeler plusieurs fois d'affilé
    $('.div_article1').empty();
    $.post( "../App/bloc/devoirs.php",
        function(data) {
          $('.div_article1').append(data);
        }
    );
  });
  
})(jQuery);