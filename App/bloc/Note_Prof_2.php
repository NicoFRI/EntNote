<?php
	session_name("ent");
	session_start();

	//connection à la bdd
	include('/../BDD.php');
	$bdd = BDD::connect();

	//recupere les notes associés au devoir
	$Rep = $bdd->getNotesDevoir($_POST['IdDevoirs']);

	//affiche le titre
	echo '<h3>Mes Notes</h3>';

	//création du formualaire
	echo '<form method="post" action="../App/changer_note.php">';

	//création de l'entête du tableau d'affichage
	echo '<table class="table table-condensed Ul_Module_util">';
	echo '<tr>';
	echo '<td  class="info"> <b>'.$_POST['NomModule'].' </b></td>';
	echo '<td  class="info"> <b>'.$_POST['TypeDevoir'].' '.$_POST['NomDevoir'].'</b></td>';
	echo '<td  class="info"> <b>'.$_POST['DateDevoir'].' </b></td>';
	echo '</tr>';

	$NotesMax=null;

	while( $Module = $Rep->fetch()) {
	if (is_null($NotesMax)){  $NotesMax = $Module['Note_max'];}	

		echo '<tr>';
	    echo '<td "> '.$Module['Etudiant'].' </td>';
	    echo '<td class="info"> <input type="number" name="'.$Module['ID_notes'].'" id="'.$Module['ID_notes'].'" value="'.$Module['Valeur'].'" min="0" max="'.$Module['Note_max'].'" >/'.$Module['Note_max'].'  </td>';


	    	//si c'est un DM
	    	if($_POST['TypeDevoir']=="DM") {

	    		//recupere l'id du document deposé par l'etudiant pour ce DM
	    		$Doc = $bdd->getDoc($Module['id_doc_note']);

	    		//si il à été rendu par l'eleve
	    		if($Module['id_doc_note']!=NULL) {
       			 	echo '<td class="info"><a id="Voir_'.$Module['id_doc_note'].'"  href="../App/Download.php?Doc='.$Doc['Emplacement_fichier'].'">Télécharger</a></td>';
       			
       			//si c'est pas un DM
       			} else {
       				echo '<td class="info">Non rendu</td>';
       			}
       		
	    	}else{
	    	echo '<td class="info"> </td>';	

	    	}
	    echo '</tr>';
	}
                                  
	echo '</table>';
	echo '<input hidden="hidden"name="note_max" value="'.$NotesMax.'">';
	echo '<button type="submit" class="btn btn-success">Modifier</button>';
	echo '</form>';