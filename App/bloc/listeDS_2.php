<?php
	session_name("ent");
	session_start();

	//connection à la bdd
	include('/../BDD.php');
	$bdd = BDD::connect();

    //recupere les devoir associés à l'utilisateur
    $Rep = $bdd->getDetailsDevoir($_SESSION["Connexion"]["Identifiant"], $_POST['IdDevoirs']);


    //gestion date pour test
    $date = date('Y-m-d'); 
    $now = new DateTime( $date );
    $now = $now->format('Ymd'); 

    $next = new DateTime( $Rep['Date_devoir'] ); 
    $next = $next->format('Ymd'); 
    

    echo '<table class="table table-condensed Ul_Module_util">';
    echo '<tr>';
        echo '<td class="info">Module</td>';
        echo '<td >'.$Rep['Nom_module'].'</td>';
    echo '</tr>';
      echo '<tr>';
        echo '<td class="info">Devoir</td>';
        echo '<td >'.$Rep['type_devoir'].' '.$Rep['Nom_devoir'].'</td>';
    echo '</tr>';
     echo '<tr>';
        echo '<td class="info">Note</td>';
        echo '<td >'.$Rep['Valeur'].'/'.$Rep['Note_max'].'</td>';
    echo '</tr>';
     echo '<tr>';
        echo '<td class="info">Date</td>';
        echo '<td >'.$Rep['Date_devoir'].'</td>';
    echo '</tr>';


    // si il y a un dm à rendre et qu'il est pas encore rendu et date pas encore passée
    if($Rep['type_devoir']=="DM" && $Rep['id_doc_note']==null &&  $now < $next  ) {
    echo '<tr>';
        echo '<td class="info" colspan="2"><a id="Rendre_'.$Rep['Id_devoir'].'">rendre le DM</a></td>';
    echo '</tr>';


        echo"<script>\n";
        echo"(function($) {\n";
       echo " $('#Rendre_".$Rep['Id_devoir']."').click(function(e){\n";
       echo"  e.preventDefault();\n";

        //vide la div_article3
        echo "$('.div_article3').empty(); ";

        //demande de l'affichage à upload_3 dans la div_article2
        echo '$.post( "../App/bloc/rendre_devoir_3.php",';
        echo '{ IDnotes: "'.$Rep['ID_notes'].'" , NomModule: "'.$Rep['Nom_module'].'", iddatedev: "'.$Rep['Date_devoir'].'"  },';
        echo" function(data) {";
        echo" $('.div_article3').append(data);";
        echo "}";
        echo" );";
        echo"});\n";
        echo "})(jQuery); </script> ";
    }

    if($Rep['id_doc_devoir']!=null &&  $now < $next  ) {
        echo '<tr>';
        echo '<td class="info" colspan="2"><a id="Voir_'.$Rep['id_doc_devoir'].'"  href="../App/Download.php?Doc='/*chemin.*/.'">Télécharger le document</a></td>';
    echo '</tr>';
}