<?php
session_name("ent");
session_start();

session_destroy();
header('location: ./Connexion.php');