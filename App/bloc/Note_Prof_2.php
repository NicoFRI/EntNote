<?php
session_name("ent");
	session_start();

	//connection à la bdd
	include('/../BDD.php');
	$bdd = BDD::connect();


	$Rep = $bdd->getNotesDevoir($_POST['IdDevoirs']);


	echo '<h3>Mes Notes</h3>';
	echo '<form method="post" action="../App/changer_note.php">';
	echo '<table class="table table-condensed Ul_Module_util">';
	echo '<tr>';
	echo '<td  class="info"> <b>'.$_POST['NomModule'].' </b></td>';
	echo '<td  class="info"> <b>'.$_POST['TypeDevoir'].' '.$_POST['NomDevoir'].'</b></td>';
	echo '<td  class="info"> <b>'.$_POST['DateDevoir'].' </b></td>';
	echo '</tr>';
	
	
	while( $Module = $Rep->fetch()) {
		//var_dump($Module);
		echo '<tr>';
	    echo '<td "> '.$Module['Etudiant'].' </td>';

	    	//si c'est un DM
	    	if($_POST['TypeDevoir']=="DM") {
	    		echo '<td class="info"> <input  type="number" name="'.$Module['ID_notes'].'"  id="'.$Module['ID_notes'].'" value="'.$Module['Valeur'].'">/'.$Module['Note_max'].' min="0" max="'.$Module['Note_max'].'"</td>';


	    		//$Doc = $bdd->getDoc($_POST['IdDevoirs']);
var_dump($Module);

	    		//si il à été rendu par l'eleve
	    		if($Module['id_doc_note']!=NULL) {
       			 echo '<td class="info"><a id="Voir_'.$Rep['id_doc_note'].'"  href="../App/Download.php?Doc='/*chemin.*/.'">Télécharger</a></td>';
       			 //sinon
       			} else {
       				echo '<td class="info">pas rendu</td>';
       			}
       		//si c'est pas un DM
	    	}else{
	    	echo '<td class="info"> <input type="number" name="'.$Module['ID_notes'].'" id="'.$Module['ID_notes'].'" value="'.$Module['Valeur'].'" min="0" max="'.$Module['Note_max'].'" >/'.$Module['Note_max'].'  </td>';
	    	echo '<td class="info"> </td>';	

	    	}
	    echo '</tr>';
	}
                                  
	echo '</table>';
	echo '<input hidden="hidden" name="note_max" valeur="'.$Module['Note_max'].'">';
	echo '<button type="submit" class="btn btn-success">Modifier</button>';
	echo '</form>';