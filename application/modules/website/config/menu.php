<?php

// module name
$HmvcMenu["website"] = array(
    //set icon
    "icon"           => "<i class='fa fa-globe'></i>", 

    // setting
    'website'  => array( 
        "controller" => "website",
        "method"     => "index",
        "permission" => "read"
    ), 

    // setting
    'setting'  => array( 
        "controller" => "setting",
        "method"     => "form",
        "permission" => "update"
    ), 

    // offer
    'offer'  => array( 
        "controller" => "setting",
        "method"     => "offer",
        "permission" => "update"
    ),  
);
   

 