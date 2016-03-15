<?php
session_start();
if ( $_SESSION["Connecter"]== true ) {
    $_SESSION[Nom];
    $_SESSION[Prenom];
}elseif{

}
?>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">

        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>


        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <a class="navbar-brand" href="#">Bienvenue</a>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Mes notes <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Algorithmique</a></li>
                        <li><a href="#">Analyse Numérique</a></li>
                        <li><a href="#">JAVA</a></li>
                        <li><a href="#">PHP</a></li>
                        <li><a href="#">Projet</a></li>
                    </ul>
                </li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <a class="navbar-brand" href="#">Nom</a>
                <a class="navbar-brand" href="#">Prenom</a>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Options <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Plus d'options</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Déconnexion</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
