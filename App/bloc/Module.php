<?php
	session_name("ent");
	session_start();

	//connection à la bdd
	include('/../BDD.php');
	$bdd = BDD::connect();
	
	//recupere le type de l'utilisateur
	$typeUtil = $bdd->getInfoUtilisateur($_SESSION["Connexion"]["Identifiant"]);

	//recupere les modules associés à l'utilisateur
	$Rep = $bdd->getModuleUtilisateur($_SESSION["Connexion"]["Identifiant"]);


	echo '<h3>Mes modules</h3>';
	echo '<table class="table table-condensed Ul_Module_util">';
	echo '<tr>';
		echo '<td >Nom du module</td>';
		echo '<td class="info">Moyenne</td>';
	echo '</tr>';

	while( $Module = $Rep->fetch()) {
		echo '<tr>';
	    	echo '<td > <a  id="Module_'.$Module['ID_module'].'_0"> '.$Module['Nom_module'].' </a></td>';
			echo '<td class="info"> <a id="Module_'.$Module['ID_module'].'_1"> ';

			if(!$Module['Moyenne']==NULL) echo (float)$Module['Moyenne'].'/20</a></td>';
			else echo "NC";
	    	
	    echo '</tr>';

		//creer le script pour chaque Module pour pouvoir afficher les notes dans le second bloc
		echo"<script>\n";
			echo"(function($) {\n";
			echo " $('#Module_".$Module['ID_module']."_0,#Module_".$Module['ID_module']."_1 ').click(function(e){\n";
			echo"  e.preventDefault();\n";

			//vide la div_article2 et la div_article3
			echo "$('.div_article2').empty(); ";
			echo "$('.div_article3').empty(); ";

			//si demande de module affichage de Note_2 dans la div_article3
			if($_POST['Clic_Nav']=="Module")
			echo '$.post( "../App/bloc/Note_2.php",';			

			//envoie de la fonction avec des variables
	      	echo '{ IdModule: "'.$Module['ID_module'].'", NomModule: "'.$Module['Nom_module'].'" },';
	  		echo" function(data) {";
	   		echo" $('.div_article2').append(data);";
	     	echo "}";
	   		echo" );";

			echo"});\n";
		echo "})(jQuery); </script> ";
	}


	echo '</table>';
?>







