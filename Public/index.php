<?php
if (empty($_SESSION["Connexion"]["Identifiant"])){
    header('location: ./Connexion.php');
}else {
    $util = new Utilisateur($_SESSION["Connexion"]['Identifiant']);
}

?>