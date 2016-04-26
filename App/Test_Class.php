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

$rep = $bdd->getDetailsNotes("13_15_19");
echo "getDetailsNotes ";
var_dump($rep);

$cpt=0;
$rep = $bdd->getModuleEnseignant("AL195");
while($tableau = $rep->fetch())
{
    echo "getModuleEnseignant ".$cpt++;
    var_dump($tableau);
}

$cpt=0;
$rep = $bdd->getDevoirEnseignant("AL195");
while($tableau = $rep->fetch())
{
    echo "getDevoirEnseignant ".$cpt++;
    var_dump($tableau);
}

$cpt=0;
$rep = $bdd->getNotesDevoir(53);
while($tableau = $rep->fetch())
{
    echo "getNotesDevoir ".$cpt++;
    var_dump($tableau);
}


$rep = $bdd->getDetailsDevoir("SA171",53);
echo "getDetailsDevoir ";
var_dump($rep);

$rep = $bdd->getDoc(5);
echo "getDoc ";
var_dump($rep);
