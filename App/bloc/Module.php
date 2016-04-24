<?php
	session_name("ent");
	session_start();

	//connection à la bdd
	include('/../BDD.php');
	$bdd = BDD::connect();


	//recupere les modules associés à l'utilisateur
	$Rep = $bdd->getModuleUtilisateur($_SESSION["Connexion"]["Identifiant"]);

echo '<h3>Modules </h3>';
	echo '<ul class="Ul_Module_util">';
	while( $Module = $Rep->fetch()) {
		 echo '<li><a  id="Module_'.$Module['ID_module'].'">'.$Module['Nom_module'].'</a></li><br />';
	


		//creer le script pour chaque Module pour pouvoir afficher les notes dans le second bloc
		echo"<script>\n";
		echo"(function($) {\n";
		echo " $('#Module_".$Module['ID_module']."').click(function(e){\n";
		echo"  e.preventDefault();\n";

		echo "$('.div_article2').empty(); ";
		echo "$('.div_article3').empty(); ";

		echo '$.post( "../App/bloc/Note_2.php",';
      	echo '{ IdModule: "'.$Module['ID_module'].'", NomModule: "'.$Module['Nom_module'].'" },';
  		echo" function(data) {";
   		echo" $('.div_article2').append(data);";
     	echo "}";
   		echo" );";

		echo"});\n";
		echo "})(jQuery); </script> ";
}


	echo '</ul>';
?>







