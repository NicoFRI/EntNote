<?php
session_name("ent");
	session_start();

	//connection à la bdd
	include('/../BDD.php');
	$bdd = BDD::connect();

	$Rep = $bdd->getDevoirEnseignant($_SESSION["Connexion"]["Identifiant"]);


	echo '<h3>Mes devoirs</h3>';
	echo '<table class="table table-condensed Ul_Module_util">';
	echo '<tr>';
		echo '<td >Nom du module</td>';
		echo '<td class="info">Coefficient</td>';
		echo '<td >Date</td>';

	echo '</tr>';
	
	while( $Module = $Rep->fetch()) {
		echo '<tr>';
	    	echo '<td > <a  id="Module_'.$Module['ID_module'].'_0">'.$Module['Type_devoir'].' '.$Module['Nom_devoir'].' </a></td>';
			echo '<td class="info"> <a id="Module_'.$Module['ID_module'].'_1">'.$Module['Coef_module'].'</a></td> ';
			echo '<td class="info"> <a id="Module_'.$Module['ID_module'].'_1">'.$Module['Date_devoir'].'</a></td> ';    	
	    echo '</tr>';


	    echo"<script>\n";
			echo"(function($) {\n";
			echo " $('#Module_".$Module['ID_module']."_0, #Module_".$Module['ID_module']."_1').click(function(e){\n";
			echo"  e.preventDefault();\n";

			//vide la div_article2
			echo "$('.div_article2').empty(); ";

			echo '$.post( "../App/bloc/Note_Prof_2.php",';			

			//envoie de la fonction avec des variables
	      	echo '{ IdDevoirs: "'.$Module['Id_devoir'].'", NomDevoir: "'.$Module['Nom_devoir'].'" , TypeDevoir: "'.$Module['Type_devoir'].'" , NomModule: "'.$Module['Nom_module'].'" , DateDevoir: "'.$Module['Date_devoir'].'"},';
	  		echo" function(data) {";
	   		echo" $('.div_article2').append(data);";
	     	echo "}";
	   		echo" );";

			echo"});\n";
		echo "})(jQuery); </script> ";
	}

	echo "</table>";