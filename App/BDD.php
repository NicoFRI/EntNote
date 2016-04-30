<?php

class BDD{
	
	public static function connect() {
		try {
		
		$bdd = new myBase('mysql:host=localhost;dbname=entnotes;charset=utf8', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
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


    public function getModuleUtilisateur($identifiant)
    {
        $rep = $this->query('SELECT * FROM `modules_utilisateur` WHERE Identifiant="'.$identifiant.'"');
        return $rep;
    }

	public function getDetailsNotes($ID_notes)
	{
		$rep = $this->query('SELECT * FROM `detailsnotes` WHERE `ID_notes`="'.$ID_notes.'"');
		return $rep->fetch();
	}

    public function getModuleEnseignant($indentifiant)
    {
        $rep = $this->query('SELECT * FROM `modules_prof`  WHERE Identifiant="'.$indentifiant.'"');
        return $rep;
    }

    public function getDevoirEnseignant($indentifiant)
    {
        $rep = $this->query('SELECT * FROM `devoir_prof` where `Identifiant`="'.$indentifiant.'"');
        return $rep;
    }

    public function getNotesDevoir($IdDevoir)
    {
        $rep = $this->query('SELECT * FROM `notes_par_intero` where `Id_devoir`="'.$IdDevoir.'"');
        return $rep;
    }

    public function getDevoirEtudiant($indentifiant)
    {
        $rep = $this->query('SELECT * FROM `notes_par_intero` where`Identifiant`="'.$indentifiant.'"');
        return $rep;
    }

    public function getDetailsDevoir($indentifiant,$IdDevoir)
    {
        $rep = $this->query('SELECT * FROM `notes_par_intero` where`Identifiant`="'.$indentifiant.'" and `Id_devoir`="'.$IdDevoir.'"');
        return $rep->fetch();
    }

    public function getDoc($ID_doc)
    {
        $rep = $this->query('SELECT * FROM `document` where `ID_doc`="'.$ID_doc.'"');
        return $rep->fetch();
    }

    public function InsertNewDevoir($devoir)
    {
        $devoir["Nom_module"] = explode(" / ",$devoir["Nom_module_promo"]);


        $rep = $this->query('SELECT `ID_module` FROM `modules` WHERE `Nom_module`="'.$devoir["Nom_module"][0].'"');
        $ID_module=$rep->fetch()[0];


        $Doc_id = "NULL";

        if(is_null($devoir["Chemin_doc"])){
        $rep = $this->query('INSERT INTO `entnotes`.`document` (`ID_doc`, `Titre_doc`, `Description_doc`, `Emplacement_fichier`, `ID_module`, `Id_TypeDoc`) VALUES (NULL, "Sujet de '.$devoir["Nom_devoir"].'", NULL , "'.$devoir["Chemin_doc"].'",'.$ID_module.','.$devoir["ID_typedoc"].')');
        $Doc_id = $this->lastInsertId();

        }

        $rep = $this->query('INSERT INTO `entnotes`.`devoirs` (`Id_devoir`, `Nom_devoir`, `Type_devoir`, `Date_devoir`, `ID_doc`) VALUES (NULL, "'.$devoir["Nom_devoir"].'", "'.$devoir["Type_devoir"].'", "'.$devoir["Date_devoir"].'" ,'.$Doc_id.')');
        $ID_devoir = $this->lastInsertId();


        $rep = $this->query('SELECT `ID` FROM `modules_utilisateur` WHERE `Nom_module_promo`="'.$devoir["Nom_module_promo"].'" group by `ID`');


        $SQL = "INSERT INTO `entnotes`.`notes` (`Valeur`, `Commentaire`, `Coef`, `Note_max`, `ID`, `ID_module`, `Id_devoir`, `ID_doc`) VALUES ";

        while($table = $rep->fetch()){

            $SQL.='(NULL, NULL, '.$devoir["Coef"].', '.$devoir["Notes_MAX"].', '.$table["ID"].', '.$ID_module.', '.$ID_devoir.', NULL ),';
        }

        $SQL = substr($SQL, 0, -1);
        //var_dump($SQL);

        $rep = $this->query($SQL);

    }

    public function InsertDM($devoir)
    {

        $idnote = explode("_",$devoir["id_note"]);
        var_dump($idnote);
        var_dump($devoir);
        $rep = $this->query('INSERT INTO `entnotes`.`document` (`ID_doc`, `Titre_doc`, `Description_doc`, `Emplacement_fichier`, `ID_module`, `Id_TypeDoc`) VALUES (NULL, "Sujet de '.$devoir["titre_doc"].'", NULL , "'.$devoir["Chemin_doc"].'","'.$idnote[0].'",'.$devoir["ID_typedoc"].')');
        $Doc_id = $this->lastInsertId();

        var_dump($devoir);


        $rep = $this->query('UPDATE `entnotes`.`notes` SET `ID_doc` = '.$Doc_id.' WHERE ( `notes`.`ID` = '.$idnote[1].' AND `notes`.`ID_module` = '.$idnote[0].' AND `notes`.`Id_devoir` = '.$idnote[2].')');
    }

    public function UpdateNotes($ID_notes,$Notes,$NotesMax)
    {

        $idnote = explode("_",$ID_notes);


        $rep = $this->query('UPDATE `entnotes`.`notes` SET `Valeur` = '.$Notes.', `Note_max` = '.$NotesMax.' WHERE ( `notes`.`ID` = '.$idnote[1].' AND `notes`.`ID_module` = '.$idnote[0].' AND `notes`.`Id_devoir` = '.$idnote[2].')');
    }

}


