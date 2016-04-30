(function($) {
  //click sur "Mes modules" dans le menu déroulant de la barre de navigation
  $('#Nav_Module').click(function(e){

    //supprime contenu de la zone d'article 1, de la zone d'article 2 et de la zone d'article 3
    $('.div_article1').empty(); 
    $('.div_article2').empty(); 
    $('.div_article3').empty(); 


    //Supprime "Mes modules" du menu déroulant
    $('#Nav_Module').html('');
    //Affiche "Mes modules" sur la barre de navigation
    $('#ici').text("Mes modules");

    //si "Mes devoirs" n'est plus dans le menu déroulant (Nav_Devoirs vide)
    if($('#Nav_Devoirs').text().length == 0){

      //réaffiche "Mes devoirs"
      $('#Nav_Devoirs').text('Mes devoirs');
    }

    //appelle le fichier Module.php par une methode POST
    $.post( "../App/bloc/Module.php",
      // pour pouvoir afficher le contenu du fichier Module.php dans la zone du premier article
      function(data) {
        $('.div_article1').append(data);
      }
    );
  });



  //click sur "Mes devoirs" dans dans le menu déroulant de la barre de navigation
  $('#Nav_Devoirs').click(function(e){
  
    //supprime contenu de la zone d'article 1, de la zone d'article 2 et de la zone de l'article 3
    $('.div_article1').empty();
    $('.div_article2').empty(); 
    $('.div_article3').empty(); 

    //modifie l'affichage dans le nav
    $('#Nav_Devoirs').html('');
    $('#ici').text("Mes devoirs");

    //si "Mes Modules" n'est plus dans le menu déroulant (Nav_Module vide)
    if($('#Nav_Module').text().length == 0) {

      //réaffiche "Mes modules"
      $('#Nav_Module').text('Mes modules');
    }

    //appelle le fichier devoirs.php par une methode POST 
    $.post( "../App/bloc/devoirs.php",
      { Clic_Nav: "Devoirs"},
        // pour pouvoir afficher le contenu du fichier devoirs.php dans la zone du premier article
        function(data) {
          $('.div_article1').append(data);
        }
    );
  });



    //click sur "Mes devoirs" dans dans le menu déroulant de la barre de navigation d'un enseignant
   $('#Nav_Devoirs_Prof').click(function(e){

    //supprime contenu de la zone d'article 1 et de la zone d'article 2
    $('.div_article1').empty();
    $('.div_article2').empty();

    //modifie l'affichage dans la barre de navigation
    $('#ici').text("Mes devoirs");

    //appelle le fichier devoirs_Prof.php par une methode POST 
    $.post( "../App/bloc/devoirs_Prof.php",
      { Clic_Nav: "Devoirs"},
        // pour pouvoir afficher le contenu du fichier devoirs.php dans la zone du premier article

        function(data) {
          $('.div_article1').append(data);
        }
    );
  });



})(jQuery);