<?php
	//Récuperation de la session créer à la connection de l'utilisateur
	session_name("ent");
	session_start();

	//connection à la bdd
	include('/../BDD.php');
	$bdd = BDD::connect();

	//recupere les modules associés à l'utilisateur
	$Rep = $bdd->getModuleUtilisateur($_SESSION["Connexion"]["Identifiant"]);

	//affiche le titre
	echo '<h3>Mes modules</h3>';

	//création de l'entête du tableau d'affichage
	echo '<table class="table table-condensed Ul_Module_util">';
	echo '<tr>';
		echo '<td >Nom du module</td>';
		echo '<td class="info">Moyenne</td>';
	echo '</tr>';

	//Pour chaque réponse de la requête SQL
	while( $Module = $Rep->fetch()) {

		//affiche dans le tableau et sous forme de lien les informations renvoyé par la requête SQL
		echo '<tr>';
	    	echo '<td > <a  id="Module_'.$Module['ID_module'].'_0"> '.$Module['Nom_module'].' </a></td>';
			echo '<td class="info"> <a id="Module_'.$Module['ID_module'].'_1"> ';

			//Si une moyenne à pu être calculé par la requête SQL, affichage de la moyenne en float
			if(!$Module['Moyenne']==NULL) echo (float)$Module['Moyenne'].'/20</a></td>';

			//Sinon affichage de "NC"
			else echo "NC";
	    	
	    echo '</tr>';

		//création d'un script 
		echo"<script>\n";
			echo"(function($) {\n";

  			//Pour les informations affiché sous forme de liens, lors du click sur ces liens
			echo " $('#Module_".$Module['ID_module']."_0,#Module_".$Module['ID_module']."_1 ').click(function(e){\n";

			//supprime contenu de la zone d'article 2 et de la zone d'article 3
			echo "$('.div_article2').empty(); ";
			echo "$('.div_article3').empty(); ";

    		//appelle le fichier Note_2.php par une methode POST
			echo '$.post( "../App/bloc/Note_2.php",';			

			//Avec des variables dans l'entête de la méthode POST
	      	echo '{ IdModule: "'.$Module['ID_module'].'", NomModule: "'.$Module['Nom_module'].'" },';
      
      		//Pour pouvoir afficher le contenu du fichier Note_2.php dans la zone de l'article 2	
	  		echo" function(data) {";
	   		echo" $('.div_article2').append(data);";

	     	echo "});";
			echo"});\n";
		echo "})(jQuery); </script> ";
	}


	echo '</table>';
?>







