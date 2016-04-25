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
		    echo '<td class="info"> <a id="Devoir_'.$Devoir['ID_notes'].'_0"> '.$Devoir['Nom_devoir'].' </a></td>';
		    echo '<td> <a id="Devoir_'.$Devoir['ID_notes'].'_1">'.$Devoir['Valeur'].'/'.$Devoir['Note_max'].'</a></td>';
		    echo '<td class="info"> <a id="Devoir_'.$Devoir['ID_notes'].'_2"> '.$Devoir['Coef'].'</a></td>';
	    echo '</tr>';


		//creer le script pour chaque note pour pouvoir afficher les details dans le troisieme bloc
	    echo"<script>\n";
			echo"(function($) {\n";
			echo " $('#Devoir_".$Devoir['ID_notes']."_0, #Devoir_".$Devoir['ID_notes']."_1 , #Devoir_".$Devoir['ID_notes']."_2').click(function(e){\n";
			echo"  e.preventDefault();\n";

			//vide la div_article3
			echo "$('.div_article3').empty(); ";

			//demande de l'affichage Detail_3 dans la div_article3
			echo '$.post( "../App/bloc/Detail_3.php",';
	      	echo '{ IdDevoir: "'.$Devoir['ID_notes'].'", NomDevoir: "'.$Devoir['Nom_devoir'].'" },';
	  		echo" function(data) {";
	   		echo" $('.div_article3').append(data);";
	     	echo "}";
	   		echo" );";

			echo"});\n";
		echo "})(jQuery); </script> ";


	}


	echo '</table>';
?>







