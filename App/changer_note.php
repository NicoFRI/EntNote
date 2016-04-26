<?php

session_name("ent");
session_start();

//connection à la bdd
include('/BDD.php');
include("/Utilisateur.php");

$bdd = BDD::connect();
$Utilisateur = new Utilisateur($_SESSION["Connexion"]["Identifiant"]);
$notesMax = $_POST["note_max"];
$cpt=0;
foreach($_POST as $key=>$Notes){
if($key!="note_max") {$bdd->UpdateNotes($key,$Notes,$notesMax); };
}

header('location: ./../Public/page.php');