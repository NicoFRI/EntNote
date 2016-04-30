<?php
	session_name("ent");
	session_start();

echo'
    <form method="post" action="../App/bloc/upload_3_etu.php" enctype="multipart/form-data">
        <div class="form-group">
            <label for="InputFile">Document en PDF</label>
            <input type="file" name="InputFile" id="InputFile" required/>

            <input type="hidden" name="IDnotes" id="IDnotes" value="'.$_POST['IDnotes'].'"/>
            <input type="hidden" name="NomModule" id="NomModule" value="'.$_POST['NomModule'].'"/>
            <input type="hidden" name="iddatedev" id="iddatedev" value="'.$_POST['iddatedev'].'"/>
            <p class="help-block">Ajoutez un document si besoin</p>
        </div>
    <button type="submit" class="btn btn-success">Ajouter</button>
    </form>';
echo '';
?>
