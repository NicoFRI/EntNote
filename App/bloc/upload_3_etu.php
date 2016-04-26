<?php
session_name("ent");
session_start();

//connection à la bdd
include('/../BDD.php');
$bdd = BDD::connect();


echo $_FILES['InputFile']['tmp_name'];

if ( is_uploaded_file($_FILES['InputFile']['tmp_name']) ) {
    $uid=uniqid();

    $idPath = '/document/etu/'.$uid.'.pdf';
    if (move_uploaded_file($_FILES['InputFile']['tmp_name'],
        './../..'.$idPath )) {
        header('location: ./../../Public/page.php');
    };
}
$tabINSERT= array ( "Nom_module" => $_POST['NomModule'],
                    "id_note" => $_POST['IDnotes'],
                    "idDate_devoir" => $_POST['iddatedev'],
                    "titre_doc" => $_SESSION["Connexion"]["Identifiant"],
                    "ID_typedoc" => '3');
