<?php
	session_name("ent");
	session_start();

	//connection à la bdd
	include('/../BDD.php');
	$bdd = BDD::connect();


	//recupere les modules associés à l'utilisateur
	$Rep = $bdd->getUtilisateurNotesPour1module($_SESSION["Connexion"]["Identifiant"],$_POST['Module']);

	echo'Bonjour';




	/*echo '<ul class="Ul_Module_util">';*/
	while( $Module = $Rep->fetch()) {
		 /*echo '<li><a  id="'.$Module['Nom_module'].'">'.$Module['Nom_module'].'</a></li><br />';
	
		 //creer le script pour chaque Module pour pouvoir afficher les notes dans le second bloc
		echo"<script>\n";
		echo"(function($) {\n";
		echo " $('#".$Module['Nom_module']."').click(function(e){\n";
		echo"  e.preventDefault();\n";

		echo '$.post( "../App/bloc/Note_2.php",';
      	echo '{ Module: "'.$Module['Nom_module'].'" },';
  		echo" function(data) {";
   		echo" $('.div_article2').append(data);";
     	echo "}";
   		echo" );";


		echo "alert('ici')";
		echo"});\n";
		echo "})(jQuery); </script> ";*/
}


	//echo '</ul>';
?>







