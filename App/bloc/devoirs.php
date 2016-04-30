<?php
    session_name("ent");
    session_start();

    //connection à la bdd
    include('/../BDD.php');
    $bdd = BDD::connect();

    //recupere les devoir associés à l'utilisateur
    $Rep = $bdd->getDevoirEtudiant($_SESSION["Connexion"]["Identifiant"]);

        echo '<h3>Mes devoirs </h3>';
    echo '<table class="table table-condensed Ul_Module_util">';
    echo '<tr>';
        echo '<td class="info">Module</td>';
        echo '<td >Devoir</td>';
        echo '<td class="info">Date du devoir</td>';
    echo '</tr>';

    //Pour chaque réponse de la requête SQL    
    while($Devoir = $Rep->fetch()){

        //affiche dans le tableau et sous forme de lien les informations renvoyé par la requête SQL
        echo '<tr>';
            echo '<td class="info"> <a id="Devoir_'.$Devoir['Id_devoir'].'_0">'.$Devoir['Nom_module'].'</a></td>';
            echo '<td> <a id="Devoir_'.$Devoir['Id_devoir'].'_1">'.$Devoir['type_devoir'].' '.$Devoir['Nom_devoir'].'</td>';
            echo '<td class="info"> <a id="Devoir_'.$Devoir['Id_devoir'].'_2">'.$Devoir['Date_devoir'].'</td>';
        echo '</tr>';


        //création d'un script
        echo"<script>\n";
            echo"(function($) {\n";
            //Pour les informations affiché sous forme de liens, lors du click sur ces liens
            echo " $('#Devoir_".$Devoir['Id_devoir']."_0,#Devoir_".$Devoir['Id_devoir']."_1  ,#Devoir_".$Devoir['Id_devoir']."_2').click(function(e){\n";

            //supprime contenu de la zone d'article 2 et de la zone d'article 3
            echo "$('.div_article2').empty(); ";
            echo "$('.div_article3').empty(); ";

            //appelle le fichier listeDS_2.php par une methode POST
            echo '$.post( "../App/bloc/listeDS_2.php",';

            //Avec des variables dans l'entête de la méthode POST
            echo '{ IdDevoirs: "'.$Devoir['Id_devoir'].'"},';

            //Pour pouvoir afficher le contenu du fichier Note_2.php dans la zone de l'article 2
            echo" function(data) {";
            echo" $('.div_article2').append(data);";
            echo "}";
            echo" );";

            echo"});\n";
        echo "})(jQuery); </script> ";
    }


    echo '</table>';
