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

	public function getUtilisateurNotesPour1module($indentifiant,$IDModule)
	{
		$rep = $this->query('SELECT * FROM `notesusermoduledevoir` WHERE Identifiant="'.$indentifiant.'" AND ID_module="'.$IDModule.'"');
	    return $rep;
    }


    public function getModuleUtilisateur($indentifiant)
    {
        $rep = $this->query('SELECT * FROM `modules_utilisateur` WHERE Identifiant="'.$indentifiant.'"');
        return $rep;
    }

	public function getDetailsNotes($ID_notes)
	{
		$rep = $this->query('SELECT * FROM `detailsnotes` WHERE `ID_notes`="'.$ID_notes.'"');
		return $rep->fetch();
	}

}

