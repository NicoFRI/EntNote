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
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Que voulez-vous ? <span class="caret"></span></a>
                            <ul class="dropdown-menu">
<?php
$t = $util->GetType();
    if ($t == 1) {
        ?>
                                <li><a id="Nav_Module" href="#">Mes modules</a></li>
                                <li><a id="Nav_Depots" href="#">Mes dépots</a></li>

<?php
    };
$t = $util->GetType();
    if ($t == 2) {
        ?>
                                <li><a id="Nav_Devoirs" href="#">Mes devoirs</a></li>
                                <li><a id="Nav_Depots" href="#">Les dépots</a></li>
<?php
    };
?>
                            </ul>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <a class="navbar-brand" href="#"><?php echo $util->getNom(); ?></a>
                        <a class="navbar-brand" href="#"><?php echo $util->getPrenom(); ?></a>
                    <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Options <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Plus d'options</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="./../Public/Deconnexion.php">Déconnexion</a></li>
            </ul>
        </li>
        </ul>
        </div>
        </div>
        </nav>
