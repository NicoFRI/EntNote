(function($) {

  $('#Nav_Module').click(function(e){
    e.preventDefault();
    //supprime contenu de .div_article1, pour eviter duplicata si fonction appeler plusieurs fois d'affilé
    $('.div_article1').empty(); 

    //modifie l'affichage dans le nav
    /*$('#li_Nav_Module').remove();
    $('.Nav_choix').removeAttr('id');
    $('.Nav_choix').attr('id', 'Nav_Module');
    $('#Nav_Module').text("Mes modules");


 var element = $("#Nav_Depots");
    if(element.length){
   
} else {
  $('.ul_nav').append('<li id="li_Nav_Depots"></li>');
 $('li_Nav_Depots').append('<a id="Nav_Depots" href="#" >Mes Depots</a>');
  //L'élément n'existe pas
}
*/
    $.post( "../App/bloc/Module.php",
      { Clic_Nav: "Module"},
      function(data) {
        $('.div_article1').append(data);
      }
    );
  });



  $('#Nav_Depots').click(function(e){
    e.preventDefault();
    //supprime contenu de .div_article1, pour eviter duplicata si fonction appeler plusieurs fois d'affilé
    $('.div_article1').empty();

    //modifie l'affichage dans le nav
  /*  $('#li_Nav_Depots').remove();
    $('.Nav_choix').removeAttr('id');
    $('.Nav_choix').attr('id', 'Nav_Depots');
    $('#Nav_Depots').text("Mes Depots");

    var element = $("#Nav_Module");
    if(element.length){
    //L'élément existe
} else {
  $('.ul_nav').append('<li id="li_Nav_Module"><a id="Nav_Module" href="#" >Mes Modules</a></li>');
  
  //L'élément n'existe pas
}*/


    $.post( "../App/bloc/devoirs.php",
      { Clic_Nav: "Devoirs"},
        function(data) {
          $('.div_article1').append(data);
        }
    );
  });
  
})(jQuery);