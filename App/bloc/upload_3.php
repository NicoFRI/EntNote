<?php
	session_name("ent");
	session_start();

	//connection à la bdd
	include('/../BDD.php');
	$bdd = BDD::connect();

	/*id du devoir => $_POST['IdDevoirs']
	nom du devoir => $_POST['NomDevoirs']*/

/* Pour upload le DEVOIR*/
echo $_FILES['InputFile']['tmp_name'];
	/*id du devoir => $_POST['IdDevoirs']
	nom du devoir => $_POST['NomDevoirs']*/

if ( is_uploaded_file($_FILES['InputFile']['tmp_name']) ) {
	$uid = $_POST['InputNom'];
	if (move_uploaded_file($_FILES['InputFile']['tmp_name'],
		'./../../document/prof/'. $uid .'.pdf' )) {
		header('location: ./../../Public/page.php');
	};
}

