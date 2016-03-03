<?php

class BDD{
	
	public static function connect() {
		try {
		
		$bdd = new PDO('mysql:host=localhost;dbname=notes;charset=utf8', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
		Return $bdd;
		
			} catch (PDOException $e) {
			
		Return $e;
		}
	}
	
	
}

