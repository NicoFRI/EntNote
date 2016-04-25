<?php

include("BDD.php");
include("Utilisateur.php");

$bdd = BDD::connect();

$bdd->getInfoUtilisateur("JB321");
var_dump($bdd);

$Utilisateur = new Utilisateur("JB321");
var_dump($Utilisateur);

$cpt=0;
$rep = $bdd->getModuleUtilisateur("JB321");
while($tableau = $rep->fetch())
{
	echo "getModuleUtilisateur ".$cpt++;
	var_dump($tableau);
}

$cpt=0;
$rep = $bdd->getUtilisateurNotesPour1module("EV199",2);

while($tableau = $rep->fetch())
{
	echo "getUtilisateurNotesPour1module ".$cpt++;
	var_dump($tableau);
}

$rep = $bdd->getDetailsNotes("131519");
echo "getDetailsNotes ";
var_dump($rep);