<?php
	session_name("ent");
	session_start();

	//connection à la bdd
	include('/../BDD.php');
	$bdd = BDD::connect();




/* Pour upload le DEVOIR*/
$Nom_module = $_POST['Cours'];
$Nom_devoir = $_POST['InputNom'];
$Type_devoir = $_POST['InputType'];
$idDate_devoir = $_POST['date'];
$idCoef = $_POST['InputCoef'];
$idNM = $_POST['InputNoteM'];
$ID_typedoc = '2';


echo $_FILES['InputFile']['tmp_name'];
	/*id du devoir => $_POST['IdDevoirs']
	nom du devoir => $_POST['NomDevoirs']*/

if ( is_uploaded_file($_FILES['InputFile']['tmp_name']) ) {
    $uid=uniqid();
    $idPath = '/document/prof/'.$uid.'.pdf';
	if (move_uploaded_file($_FILES['InputFile']['tmp_name'],
		'./../..'.$idPath )) {
		header('location: ./../../Public/page.php');
	};
}

$tabINSERT= array ( "Nom_module_promo" => $Nom_module,
                    "Nom_devoir" => $Nom_devoir,
                    "Type_devoir" => $Type_devoir,
                    "idDate_devoir" => $idDate_devoir,
                    "idCoef" => $idCoef,
                    "idNM" => $idNM,
                    "ID_typedoc" => $ID_typedoc);

