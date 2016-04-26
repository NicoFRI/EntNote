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
                                    <form method="post" action="../App/bloc/upload_3.php" enctype="multipart/form-data">
                                        <div class="btn-group">
                                            <select name="Cours" id="Cours">
                                                <?php $rep = $bdd->getModuleEnseignant($_SESSION["Connexion"]["Identifiant"]);
                                                while($tableau = $rep->fetch())
                                                {
                                                    echo '<option>'.$tableau['Nom_module_promo'].'</option>';
                                                    // var_dump($tableau);
                                                }
                                                ?>
                                            </select>

                                        </div>
                                        <div class="form-group">
                                            <label for="InputNom">Nom</label>
                                            <input type="nom" class="form-control"  id="InputNom" name="InputNom"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="InputType">Type (DS-OralQCM)</label>
                                            <input type="nom" class="form-control" id="InputType" name="InputType"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="date">Date (YYYY-MM-DD) </label>
                                            <input type="text" placeholder="YYYY-MM-DD" id="date" name="date" />
                                        </div>

                                        <div class="form-group">
                                            <label for="InputCoef">Coefficient</label>
                                            <input type="nom" class="form-control" id="InputCoef" name="InputCoef" >
                                        </div>
                                        <div class="form-group">
                                            <label for="InputNote">Note maximale</label>
                                            <input type="note" class="form-control" id="InputNote" name="InputNoteM">
                                        </div>


                                        <div class="form-group">
                                            <label for="InputFile">Document en PDF</label>
                                            <input type="file" name="InputFile" id="InputFile">
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