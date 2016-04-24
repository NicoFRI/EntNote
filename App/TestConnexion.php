<?php
	session_name("ent");
	session_start();
	$_SESSION["Connexion"]=$_POST;

	//si l'identifiant saisi
	if(empty($_SESSION["Connexion"]["Identifiant"])) {
		$_SESSION["Connexion"]['ErreurIdentifiant']=1; 

	} else {
		//création d'un nouvel utilisateur
		include("Utilisateur.php");
		$Utilisateur = new Utilisateur($_SESSION["Connexion"]["Identifiant"],$_SESSION["Connexion"]["Password"]);

		//si l'utilisateur n'est pas connecté
		if(!$Utilisateur->estConnecte()) {
	     $_SESSION["Connexion"]['ErreurIdentifiant']=1;    	
		} 

		//si password non saisi
		if(empty($_SESSION["Connexion"]["Password"])) {
			$_SESSION["Connexion"]['ErreurPassword']=1;

		/*//si c'est le bon password
		} elseif($donnees["Mdp"]!=$_SESSION["Connexion"]["Password"]){
			$_SESSION["Connexion"]['ErreurPassword']=1;*/
		}
	}

//s'il y a une erreur dans le password ou dans l'identifiant
if(isset($_SESSION["Connexion"]['ErreurPassword']) || isset($_SESSION["Connexion"]['ErreurIdentifiant']))
{
	//renvoie sur la page de connexion
	header('location:../Public/Connexion.php');

//si aucune erreur, sauvergarde des variables et envoie sur la page du site
} else {
	/*
	$_SESSION["Nom"]=$donnees["Nom"];
	$_SESSION["Prenom"]=$donnees["Prenom"];
	$_SESSION["Connecter"]=true;

	//regarde si le checkbox remember est coché
	if(isset($_POST["remember"])) {
	$_SESSION["Connecter"]["remember"]=true;
	}*/

	//detruit les variables
	unset($_SESSION["Connexion"]['ErreurIdentifiant']);
	unset($_SESSION["Connexion"]['ErreurPassword']);
	//unset($_SESSION["Connexion"]['Identifiant']);
	unset($_SESSION["Connexion"]['Password']);

	//envoie sur la page du site
	//header('location:../Public/Page.html');
	header('location:../Public/page.php');
}
?>