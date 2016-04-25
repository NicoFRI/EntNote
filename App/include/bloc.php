<!--section-->
<?php
$bdd=BDD::connect();
?>
    <section>
        <div class="col-sm-14 col-md-12">
            <div class="row">

                <!--zone article 1-->
                <article id="article1">
                    <div class="col-xs-6 col-sm-4">
                        <div class="thumbnail">
                            <span class="glyphicon glyphicon-book" aria-hidden="true"></span>
                            <div class="caption div_article1">

                            </div>
                        </div>
                    </div>
                </article>

                <!--zone article 2-->
                <article id="article2">
                    <div class="col-xs-6 col-sm-4">
                        <div class="thumbnail">
                            <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
                            <div class="caption div_article2">

                            </div>
                        </div>
                    </div>
                </article>

                <!--zone article 3-->
                <article id="article3">
                    <div class="col-xs-6 col-sm-4">
                        <div class="thumbnail">
                            <span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
                            <div class="caption div_article3">
                                <?php
                                $t = $util->GetType();
                                if ($t == 1) {
                                    ?>
                                    <?php
                                };
                                $t = $util->GetType();
                                if ($t == 2) {
                                    ?>
                                    <h3>Ajouter une interro</h3>
                                    <form>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <?php $rep = $bdd->getModuleUtilisateur($_SESSION["Connexion"]["Identifiant"]);
                                                while($tableau = $rep->fetch())
                                                {

                                                    var_dump($tableau);
                                                }
                                                ?>
                                                <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li><a href="#">Action</a></li>
                                                <li><a href="#">Another action</a></li>
                                                <li><a href="#">Something else here</a></li>
                                                <li role="separator" class="divider"></li>
                                                <li><a href="#">Separated link</a></li>
                                            </ul>
                                        </div>
                                        <div class="form-group">
                                            <label for="InputNom">Nom</label>
                                            <input type="nom" class="form-control" id="InputNom">
                                        </div>
                                        <div class="form-group">
                                            <label for="InputType">Type</label>
                                            <input type="nom" class="form-control" id="InputType">
                                        </div>
                                        <div class="form-group">
                                            <label for="InputNom">Date</label>
                                            <div class='input-group date' id='datetimepicker1'>
                                                <input type='text' class="form-control" />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="InputCoef">Coefficient</label>
                                            <input type="nom" class="form-control" id="InputCoef">
                                        </div>
                                        <div class="form-group">
                                            <label for="InputNote">Note maximale</label>
                                            <input type="note" class="form-control" id="InputNote">
                                        </div>


                                        <div class="form-group">
                                            <label for="InputFile">Document</label>
                                            <input type="file" id="InputFile">
                                            <p class="help-block">Ajoutez un document si besoin</p>
                                        </div>
                                        <button type="submit" class="btn btn-success">Ajouter</button>
                                    </form>




                                    <?php
                                };
                                ?>
                            </div>
                        </div>
                    </div>
                </article>
            </div>
        </div>
    </section>