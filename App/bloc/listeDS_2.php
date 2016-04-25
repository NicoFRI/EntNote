<?php
	session_name("ent");
	session_start();

	//connection à la bdd
	include('/../BDD.php');
	$bdd = BDD::connect();

    //recupere les devoir associés à l'utilisateur
    $Rep = $bdd->getDetailsDevoir($_SESSION["Connexion"]["Identifiant"], $_POST['IdDevoirs']);

    echo '<table class="table table-condensed Ul_Module_util">';
    echo '<tr>';
        echo '<td class="info">Module</td>';
        echo '<td >'.$Rep['Nom_module'].'</td>';
    echo '</tr>';
      echo '<tr>';
        echo '<td class="info">Devoir</td>';
        echo '<td >'.$Rep['type_devoir'].' '.$Rep['Nom_devoir'].'</td>';
    echo '</tr>';
     echo '<tr>';
        echo '<td class="info">Note</td>';
        echo '<td >'.$Rep['Valeur'].'/'.$Rep['Note_max'].'</td>';
    echo '</tr>';
     echo '<tr>';
        echo '<td class="info">Date</td>';
        echo '<td >'.$Rep['Date_devoir'].'</td>';
    echo '</tr>';
