<?php  if (!defined('BASEPATH')) exit('No direct script access allowed');

// -------------------------------------------------------------
// Paypal IPN Class
//--------------------------------------------------------------

// Use PayPal on Sandbox or Live
$config['sandbox'] = TRUE; // FALSE for live environment

// PayPal Data
$ci =& get_instance();
$paypal = $ci->db->select('paypal_email, currency')
    ->from('ws_setting')
    ->get()
    ->row();  

// PayPal Business Email ID
$config['business'] = (!empty($paypal->paypal_email)?$paypal->paypal_email:'fleet_business@example.com');

// What is the default currency?
$config['paypal_lib_currency_code'] = (!empty($paypal->currency)?$paypal->currency:'USD');
 

// If (and where) to log ipn to file
$config['paypal_lib_ipn_log_file'] = BASEPATH . 'logs/paypal_ipn.log';
$config['paypal_lib_ipn_log'] = TRUE;

// Where are the buttons located at 
$config['paypal_lib_button_path'] = 'buttons';
 
 
		
 
		


