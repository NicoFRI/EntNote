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
    
while($Devoir = $Rep->fetch()){
    echo '<tr>';
        echo '<td class="info"> <a id="Devoir_'.$Devoir['Id_devoir'].'_0">'.$Devoir['Nom_module'].'</a></td>';
        echo '<td> <a id="Devoir_'.$Devoir['Id_devoir'].'_1">'.$Devoir['type_devoir'].' '.$Devoir['Nom_devoir'].'</td>';
        echo '<td class="info"> <a id="Devoir_'.$Devoir['Id_devoir'].'_2">'.$Devoir['Date_devoir'].'</td>';
    echo '</tr>';



       echo"<script>\n";
        echo"(function($) {\n";
        echo " $('#Devoir_".$Devoir['Id_devoir']."_0,#Devoir_".$Devoir['Id_devoir']."_1  ,#Devoir_".$Devoir['Id_devoir']."_2').click(function(e){\n";
        echo"  e.preventDefault();\n";

        //vide la div_article2 et la div_article3
        echo "$('.div_article2').empty(); ";
        echo "$('.div_article3').empty(); ";

        //demande de l'affichage à upload_3 dans la div_article2
        echo '$.post( "../App/bloc/listeDS_2.php",';
        echo '{ IdDevoirs: "'.$Devoir['Id_devoir'].'"},';
        echo" function(data) {";
        echo" $('.div_article2').append(data);";
        echo "}";
        echo" );";

        echo"});\n";
        echo "})(jQuery); </script> ";
    }


    echo '</table>';
