<?php    
    session_start();  
    require 'secoder.class.php';  
    $vcode = new YL_Security_Secoder(); 
    $vcode->entry();    
?>   