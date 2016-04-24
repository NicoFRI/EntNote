(function($) {

  $('#Nav_Module').click(function(e){
    e.preventDefault();


    $.post( "../App/bloc/Module.php",
      //{ name: "Zara" },
      function(data) {
        $('.div_article1').append(data);
      }
    );
  });
     
})(jQuery);