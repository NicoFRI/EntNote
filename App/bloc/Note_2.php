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


		//création d'un script 
	    echo"<script>\n";
			echo"(function($) {\n";
  			
  			//Pour les informations affiché sous forme de liens, lors du click sur ces liens
			echo " $('#Devoir_".$Devoir['ID_notes']."_0, #Devoir_".$Devoir['ID_notes']."_1 , #Devoir_".$Devoir['ID_notes']."_2').click(function(e){\n";

			//vide la div_article3
			echo "$('.div_article3').empty(); ";

			//appelle le fichier Detail_3.php par une methode POST
			echo '$.post( "../App/bloc/Detail_3.php",';

			//Avec des variables dans l'entête de la méthode POST
	      	echo '{ IdDevoir: "'.$Devoir['ID_notes'].'" },';

	      	//Pour pouvoir afficher le contenu du fichier Detail_3.php dans la zone de l'article 3
	  		echo" function(data) {";
	   		echo" $('.div_article3').append(data);";
	     	echo "});";

			echo"});\n";
		echo "})(jQuery); </script> ";


	}


	echo '</table>';
?>







