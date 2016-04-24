<?php
	session_name("ent");
	session_start();

	//connection à la bdd
	include('/../BDD.php');
	$bdd = BDD::connect();

	//recupere les modules associés à l'utilisateur
	$Rep = $bdd->getModuleUtilisateur($_SESSION["Connexion"]["Identifiant"]);
	echo '<ul id="Ul_Module_util">';
	while( $Module = $Rep->fetch()) {
		 echo '<li><a  id="'.$Module['Nom_module'].'">'.$Module['Nom_module'].'</a></li><br />';
	}
	echo '</ul>';

?>
