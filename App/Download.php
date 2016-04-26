<?php
if (isset($_GET['Doc'])){
    $Doc=$_GET['Doc'];
    header("Content-type: application/pdf");
    header("Content-Disposition: attachment; filename=$Doc");
    readfile($Doc);
}


