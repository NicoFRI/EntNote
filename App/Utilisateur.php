<?php

class Utilisateur{
	
	Private $_Nom;
	Private $_Prenom;
	Private $_Type;
	Private $_Remember;
	Private $_Logged;
	Private $_identifiant;
	Private $_MDP;
		
	
	function __construct($identifiant="",$MDP="")
	{

	include_once("BDD.php");
	$bdd = BDD::connect();
	$info = $bdd->getInfoUtilisateur($identifiant);
		$this->_Nom = $info["Nom"];
		$this->_Prenom = $info["Prenom"];
		$this->_Remember = true;
		$this->_Logged = true;
		$this->_Type = $info["ID_Type"];
        $this->_identifiant = $info["ID"];
	}
	
	public function estConnecte()
	{
		return $this->_Logged;
	}

	public function getNom()
	{
		return $this->_Nom;
	}

	public function getPrenom()
	{
	return $this->_Prenom;
	}

    public function GetType()
    {
        return $this->_Type;
    }
	
	
	
	
}


/*
if (Utilisateur->EstConnecte()) {
	
	kdsjgvqsjkg
}

Utilisateur->GetNom()




*/