<?php

// module name
$HmvcMenu["ticket"] = array(
    //set icon
    "icon"           => "<i class='fa fa-ticket'></i>", 

    // passenger
    "passenger" => array( 
        'add'    => array( 
            "controller" => "passenger",
            "method"     => "form",
            "permission" => "create"
        ), 
        'list'  => array( 
            "controller" => "passenger",
            "method"     => "index",
            "permission" => "read"
        ), 
    ), 


    // booking
    "booking" => array( 
        'add'    => array( 
            "controller" => "booking",
            "method"     => "form",
            "permission" => "create"
        ), 
        'list'  => array( 
            "controller" => "booking",
            "method"     => "index",
            "permission" => "read"
        ), 
    ), 

  
    // refund
    "refund" => array( 
        'add'    => array( 
            "controller" => "refund",
            "method"     => "form",
            "permission" => "create"
        ), 
        'list'  => array( 
            "controller" => "refund",
            "method"     => "index",
            "permission" => "read"
        ), 
    ), 

  
    // feedback
    "feedback" => array(  
        "controller" => "feedback",
        "method"     => "index",
        "permission" => "read"
    ), 

  
);
   

 