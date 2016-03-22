<?php

include("BDD.php");
include("Utilisateur.php");

$bdd = BDD::connect();

$bdd->getInfoUtilisateur("Al195");
var_dump($bdd);

$Utilisateur = new Utilisateur();
var_dump($Utilisateur);
