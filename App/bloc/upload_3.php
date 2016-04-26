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
$idPath = null;

echo $_FILES['InputFile']['tmp_name'];
	/*id du devoir => $_POST['IdDevoirs']
	nom du devoir => $_POST['NomDevoirs']*/

if ( is_uploaded_file($_FILES['InputFile']['tmp_name']) ) {
    $uid=uniqid();
    $idPath = '/document/prof/'.$uid.'.pdf';
	if (move_uploaded_file($_FILES['InputFile']['tmp_name'],
		'./../..'.$idPath )) {

	};
}

$tabINSERT= array ( "Nom_module_promo" => $Nom_module,
                    "Nom_devoir" => $Nom_devoir,
                    "Type_devoir" => $Type_devoir,
                    "Date_devoir" => $idDate_devoir,
                    "Coef" => $idCoef,
                    "Notes_MAX" => $idNM,
					"Chemin_doc" => $idPath,
                    "ID_typedoc" => $ID_typedoc);

$bdd->InsertNewDevoir($tabINSERT);

header('location: ./../../Public/page.php');