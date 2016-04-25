<?php
	session_name("ent");
	session_start();

	//connection à la bdd
	include('/../BDD.php');
	$bdd = BDD::connect();

	//recupere les devoir associés à l'utilisateur
	$Rep = $bdd->/*requete devoirs*/;

	echo '<h3>Modules </h3>';
	echo '<table class="table table-condensed Ul_Module_util">';
	echo '<tr>';
		echo '<td >Nom du devoir</td>';
		echo '<td class="info">Date de fin</td>';
	echo '</tr>';



	while( $Devoir = $Rep->fetch()) {
        echo '<tr>';
        if(/*date non depase*/) {
        	echo '<td > <a  id="Module_'./*$Devoir['idd']*/.'_0"> './*$Devoir['nom']*/.' </a></td>';       
        	echo '<td class="info"> <a id="Module_'./*$Devoir['idd']*/.'_1">'./*$Devoir['date']*/.' </a></td>';
        }

        else {
        	echo '<td >'./*$Devoir['?']*/.'</td>';
        	echo '<td class="info">Date dépassé : './*$Devoir['date']*/.'</td> ';
        }
  
        echo '</tr>';

        //creer le script pour chaque Module pour pouvoir afficher les notes dans le second bloc
        echo"<script>\n";
        echo"(function($) {\n";
        echo " $('#Module_"./*$Devoir['idd']*/."_0,#Module_"./*$Devoir['idd']*/."_1 ').click(function(e){\n";
        echo"  e.preventDefault();\n";

        //vide la div_article2 et la div_article3
        echo "$('.div_article2').empty(); ";
        echo "$('.div_article3').empty(); ";

        //demande de l'affichage à upload_3 dans la div_article2
        echo '$.post( "../App/bloc/upload_3.php",';
        echo '{ IdDevoirs: "'./*$Devoir['idd']*/.'", NomDevoirs: "'./*$Devoir['nom']*/.'" },';
        echo" function(data) {";
        echo" $('.div_article3').append(data);";
        echo "}";
        echo" );";

        echo"});\n";
        echo "})(jQuery); </script> ";
    }


	echo '</table>';

