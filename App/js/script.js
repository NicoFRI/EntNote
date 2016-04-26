(function($) {
  //lien nav eleves
  $('#Nav_Module').click(function(e){
    e.preventDefault();
    //supprime contenu de .div_article1, pour eviter duplicata si fonction appeler plusieurs fois d'affilé
    $('.div_article1').empty(); 
    $('.div_article2').empty(); 


    //modifie l'affichage dans le nav
    $('#Nav_Module').html('');
    $('#ici').text("Mes modules");

 //si l'element est vide
    if($('#Nav_Devoirs').text().length == 0){
      $('#Nav_Devoirs').text('Mes devoirs');
    }

    $.post( "../App/bloc/Module.php",
      { Clic_Nav: "Module"},
      function(data) {
        $('.div_article1').append(data);
      }
    );
  });


  $('#Nav_Devoirs').click(function(e){
    e.preventDefault();
    //supprime contenu de .div_article1, pour eviter duplicata si fonction appeler plusieurs fois d'affilé
    $('.div_article1').empty();
    $('.div_article2').empty(); 


    //modifie l'affichage dans le nav
    $('#Nav_Devoirs').html('');
    $('#ici').text("Mes devoirs");

    if($('#Nav_Module').text().length == 0) {
      $('#Nav_Module').text('Mes modules');
    }

    $.post( "../App/bloc/devoirs.php",
      { Clic_Nav: "Devoirs"},
        function(data) {
          $('.div_article1').append(data);
        }
    );
  });




  //lien nav professeur
   $('#Nav_Devoirs_Prof').click(function(e){
    e.preventDefault();
    //supprime contenu de .div_article1, pour eviter duplicata si fonction appeler plusieurs fois d'affilé
    $('.div_article1').empty();

    //modifie l'affichage dans le nav
    /*$('#Nav_Devoirs_Prof').html('');*/
    $('#ici').text("Mes devoirs");

    /*if($('#Nav_Depots_Prof').text().length == 0) {
      $('#Nav_Depots_Prof').text('Les dépots');
    }*/

    $.post( "../App/bloc/devoirs_Prof.php",
      { Clic_Nav: "Devoirs"},
        function(data) {
          $('.div_article1').append(data);
        }
    );
  });


   /*$('#Nav_Depots_Prof').click(function(e){
    e.preventDefault();
    //supprime contenu de .div_article1, pour eviter duplicata si fonction appeler plusieurs fois d'affilé
    $('.div_article1').empty(); 

    //modifie l'affichage dans le nav
    $('#Nav_Depots_Prof').html('');
    $('#ici').text("Mes dépots");

 //si l'element est vide
    if($('#Nav_Devoirs_Prof').text().length == 0){
      $('#Nav_Devoirs_Prof').text('Mes devoirs');
    }

    $.post( "../App/bloc/depots_Prof.php",
      { Clic_Nav: "Depots_Prof"},
      function(data) {
        $('.div_article1').append(data);
      }
    );
  });*/

})(jQuery);