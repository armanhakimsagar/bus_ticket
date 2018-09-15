<?php
// module name
$HmvcMenu["account"] = array(
    //set icon
    "icon" => "<i class='fa fa-calculator' aria-hidden='true'></i>", 
    
    'account_list'   => array(  
        "controller" => "account_controller",
        "method"     => "create_account", 
        "permission" => "read"
    ), 

    'account_transaction'   => array(  
        "controller" => "account_controller",
        "method"     => "create_transaction", 
        "permission" => "read"
    ), 
 );
 