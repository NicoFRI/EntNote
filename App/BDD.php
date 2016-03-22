<?php

class BDD{
	
	public static function connect() {
		try {
		
		$bdd = new myBase('mysql:host=localhost;dbname=notes;charset=utf8', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
		Return $bdd;
		
			} catch (PDOException $e) {
			
		Return $e;
		}
	}
}


class myBase extends PDO
{

    public function getInfoUtilisateur($identifiant)
    {
        $Rep = $this->query('SELECT * FROM `utilistateur` WHERE Identifiant="'.$identifiant.'"');
        return $Rep->fetch();
    }

}

