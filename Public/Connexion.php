<?php
    session_name("ent");
    session_start();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Connexion</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
</head>

/* */
<body>
<div class="col-md-6 col-md-offset-3">
    <div class="thumbnail">
        <div class="caption">
            <div class="jumbotron">
                <center><img src="img/img.png" alt="..."></center>
            </div>
                <form method="POST" action="../App/TestConnexion.php" class="form-horizontal">

                    <!--Identifiant-->
                    <div class="form-group <?php if(isset($_SESSION["Connexion"]['ErreurIdentifiant'])){ echo 'has-error';} ?>">
                        <!--si il y a une erreur sur l'indentifiant affichee un message d'erreur-->
                        <?php if (isset($_SESSION["Connexion"]['ErreurIdentifiant'])) echo '<div class="alert alert-danger" role="alert">Veuillez vérifier votre <b>identifiant</b></div>';?>
                        <label for="inputEmail3" class="col-sm-2 control-label">Identifiant</label>
                        <div class="col-sm-10">
                            <input type="text" name="Identifiant" class="form-control" id="inputEmail3" placeholder="Identifiant" <?php if(isset($_SESSION['Connexion']['Identifiant'])) echo 'value="'.$_SESSION['Connexion']['Identifiant'].'"';?>>
                        </div>
                    </div>

                    <!--Password-->
                    <div class="form-group <?php if(isset($_SESSION["Connexion"]['ErreurPassword'])){ echo 'has-error';} ?>">
                        <!--si il y a une erreur sur l'indentifiant affichee un message d'erreur-->
                        <?php if (isset($_SESSION["Connexion"]['ErreurPassword'])) echo '<div class="alert alert-danger" role="alert">Veuillez vérifier votre <b>password</b></div>';?>   
                        <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                        <div class="col-sm-10">
                            <input type="password" name="Password" class="form-control" id="inputPassword3" placeholder="Password">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="remember"> Remember me
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary btn-lg" >Connexion</button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <script src="../bootstrap/js/npm.js"></script>
</body>
</html>