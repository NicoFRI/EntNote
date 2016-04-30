<?php
	session_name("ent");
	session_start();

	//connection à la bdd
	include('/../BDD.php');
	$bdd = BDD::connect();

	//récupere les details associée à la note
	$Detail = $bdd->getDetailsNotes($_POST['IdDevoir']);

	//afiche du titre
	echo "<h3>Détail de la note pour ".$Detail['Nom_devoir']."</h3>";

	//affichage des details de la note	
    echo '<ul class="list-group">';
       	echo '<li class="list-group-item list-group-item-info">'.$Detail['Type_devoir'].' '.$Detail['Nom_devoir'].'</li>';
        echo '<li class="list-group-item">Noté le : '.$Detail['Date_devoir'].'</li>';
        echo '<li class="list-group-item list-group-item-info">Note : '.$Detail['Valeur'].'/'.$Detail['Note_max'].'<span style="float:right;"> Coefficient : '.$Detail['Coef'].'</span></li>';
        echo '<li class="list-group-item">Commentaire : '.$Detail['Commentaire'].'</li>';
		echo '</li>';
    echo '</ul>';


?>