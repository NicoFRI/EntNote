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
                            <a href="#" class="dropdown-toggle Nav_choix" id="ici" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Que voulez-vous ? 
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu ul_nav">
                            <?php
                            $t = $util->GetType();
                            //si utilisateur est un etudiant
                                if ($t == 1) {
                                    ?>
                                <li id="li_Nav_Module"><a id="Nav_Module" href="#" >Mes modules</a></li>
                                <li id="li_Nav_Devoirs"><a id="Nav_Devoirs" href="#">Mes devoirs</a></li>

                                <?php
                                };
                                $t = $util->GetType();
                                //si utilisateur est un professeur
                                if ($t == 2) {
                                ?>
                                <li><a id="Nav_Devoirs_Prof" href="#">Mes devoirs</a></li>
                               <!-- <li><a id="Nav_Depots_Prof" href="#">Les dépots</a></li>
                                --><?php
                                    };
                                ?>
                            </ul>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
               
                    <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo $util->getNom(); ?> <?php echo $util->getPrenom(); ?> <span class="caret"></span></a>
            <ul class="dropdown-menu">

                <li><a href="./../Public/Deconnexion.php">Déconnexion</a></li>
            </ul>
        </li>
        </ul>
        </div>
        </div>
        </nav>
