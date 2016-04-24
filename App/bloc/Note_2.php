<?php
	session_name("ent");
	session_start();

	//connection à la bdd
	include('/../BDD.php');
	$bdd = BDD::connect();

	//requete sql
	$Rep = $bdd->getUtilisateurNotesPour1module($_SESSION["Connexion"]["Identifiant"],$_POST['IdModule']);

	//titre du tabelau
	echo '<h3>Mes notes en '.$_POST['NomModule'].'</h3>';

	//header du tableau de note
	echo '<table class="table table-condensed">';
	echo '<tr>';
	echo '<td class="info">Type</td>';
	echo '<td>Note</td>';
	echo '<td class="info">Coefficient</td>';
	echo '</tr>';


	while( $Devoir = $Rep->fetch()) {
		//affichage des notes    
	    echo '<tr>';
	    echo '<td class="info"> <a id="Devoir_'.$Devoir['Nom_devoir'].'"> '.$Devoir['Nom_devoir'].' </a></td>';
	    echo '<td> <a id="Devoir_'.$Devoir['Nom_devoir'].'"> '.$Devoir['Valeur'].'/'.$Devoir['Note_max'].'</a></td>';
	    echo '<td class="info"> <a id="Devoir_'.$Devoir['Nom_devoir'].'"> '.$Devoir['Coef'].'</a></td>';
	    echo '</tr>';


		//creer le script pour chaque note pour pouvoir afficher les details dans le troisieme bloc
	    echo"<script>\n";
		echo"(function($) {\n";
		echo " $('#Devoir_".$Devoir['Nom_devoir']."').click(function(e){\n";
		echo"  e.preventDefault();\n";

		echo "$('.div_article3').empty(); ";

		echo '$.post( "../App/bloc/Detail_3.php",';
      	echo '{ IdDevoir: "'.$Devoir['Nom_devoir'].'", NomDevoir: "'.$Devoir['Nom_devoir'].'" },';
  		echo" function(data) {";
   		echo" $('.div_article3').append(data);";
     	echo "}";
   		echo" );";

		echo"});\n";
		echo "})(jQuery); </script> ";


	}


	echo '</table>';
?>







