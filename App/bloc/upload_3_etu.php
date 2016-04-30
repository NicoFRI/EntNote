<?php
session_name("ent");
session_start();

//connection à la bdd
include('/../BDD.php');
include("/../Utilisateur.php");

$bdd = BDD::connect();
$Utilisateur = new Utilisateur($_SESSION["Connexion"]["Identifiant"]);

echo $_FILES['InputFile']['tmp_name'];

if ( is_uploaded_file($_FILES['InputFile']['tmp_name']) ) {
    $uid=uniqid();

    $idPath = '/document/etu/'.$uid.'.pdf';
    if (move_uploaded_file($_FILES['InputFile']['tmp_name'],
        './../..'.$idPath )) {

    };
}
$tabINSERT= array ( "Nom_module" => $_POST['NomModule'],
                    "id_note" => $_POST['IDnotes'],
                    "Date_devoir" => $_POST['iddatedev'],
                    "Chemin_doc" => $idPath,
                    "titre_doc" => ('DM de '.$Utilisateur->getNom().' '.$Utilisateur->getPrenom().''),
                    "ID_typedoc" => '3');

$bdd->InsertDM($tabINSERT);


header('location: ./../../Public/page.php');