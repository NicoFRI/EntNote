<?php
	session_name("ent");
	session_start();

	//connection à la bdd
	include('/../BDD.php');
	$bdd = BDD::connect();

	/*id du devoir => $_POST['IdDevoirs']
	nom du devoir => $_POST['NomDevoirs']*/