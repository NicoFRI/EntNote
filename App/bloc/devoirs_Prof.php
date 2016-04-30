<?php
	session_name("ent");
	session_start();

	//connection à la bdd
	include('/../BDD.php');
	$bdd = BDD::connect();

	//recupere les devoirs associés à l'utilisateur
	$Rep = $bdd->getDevoirEnseignant($_SESSION["Connexion"]["Identifiant"]);

	//affiche le titre
	echo '<h3>Mes devoirs</h3>';

	//création de l'entête du tableau d'affichage
	echo '<table class="table table-condensed Ul_Module_util">';
	echo '<tr>';
		echo '<td >Nom du module</td>';
		echo '<td class="info">Coefficient</td>';
		echo '<td >Date</td>';

	echo '</tr>';
	
	//Pour chaque réponse de la requête SQL
	while( $Module = $Rep->fetch()) {

		//affiche dans le tableau et sous forme de lien les informations renvoyé par la requête SQL
		echo '<tr>';
	    	echo '<td style="width:50%;"> <a  id="Module_'.$Module['Id_devoir'].'_0">'.$Module['Nom_module'].'<br> '.$Module['Type_devoir'].' '.$Module['Nom_devoir'].' </a></td>';
			echo '<td class="info"> <a id="Module_'.$Module['Id_devoir'].'_1">'.$Module['Coef_module'].'</a></td> ';
			echo '<td class="info"> <a id="Module_'.$Module['Id_devoir'].'_2">'.$Module['Date_devoir'].'</a></td> ';    	
	    echo '</tr>';

		//création d'un script
	    echo"<script>\n";
			echo"(function($) {\n";

			//Pour les informations affiché sous forme de liens, lors du click sur ces liens
			echo " $('#Module_".$Module['Id_devoir']."_0, #Module_".$Module['Id_devoir']."_1, #Module_".$Module['Id_devoir']."_2').click(function(e){\n";

			//supprime contenu de la zone d'article 2 
			echo "$('.div_article2').empty(); ";

			//appelle le fichier Note_2.php par une methode POST
			echo '$.post( "../App/bloc/Note_Prof_2.php",';			

			//Avec des variables dans l'entête de la méthode POST
	      	echo '{ IdDevoirs: "'.$Module['Id_devoir'].'", NomDevoir: "'.$Module['Nom_devoir'].'" , TypeDevoir: "'.$Module['Type_devoir'].'" , NomModule: "'.$Module['Nom_module'].'" , DateDevoir: "'.$Module['Date_devoir'].'"},';
	  		
	      	//Pour pouvoir afficher le contenu du fichier Note_Prof_2.php dans la zone de l'article 2
	  		echo" function(data) {";
	   		echo" $('.div_article2').append(data);";
	     	echo "}";
	   		echo" );";

			echo"});\n";
		echo "})(jQuery); </script> ";
	}

	echo "</table>";