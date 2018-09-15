<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Paypal extends CI_Controller 
{
    public function  __construct(){
        parent::__construct();
        $this->load->library('paypal_lib'); 
    }
  
    public function buy($booking_id_no = null)
    { 
        if (empty($booking_id_no))
        {
            redirect('website/paypal/cancel');
        } 
        else 
        {
            //get particular product data
            $this->load->model(array('website_model'));
            $ticket     = $this->website_model->getBooking($booking_id_no);
            $appSetting = $this->website_model->read_setting();

            $seat  = (!empty($ticket->quantity)?$ticket->quantity:1);
            $price = (!empty($ticket->price)?$ticket->price:0);
            $price = number_format(($price/$seat), 2); 
            $discount = number_format((!empty($ticket->discount)?$ticket->discount:0), 2);
            $item_name = "Ticket :: $appSetting->title";
            // ---------------------
            //Set variables for paypal form
            $returnURL = base_url('website/paypal/success'); //payment success url
            $cancelURL = base_url("website/paypal/cancel/$ticket->booking_id_no/$ticket->tkt_passenger_id_no"); //payment cancel url
            $notifyURL = base_url('website/paypal/ipn'); //ipn url
            
            //set session token
            $this->session->unset_userdata('_tran_token');
            $this->session->set_userdata(array('_tran_token'=>$booking_id_no));

            // set form auto fill data
            $this->paypal_lib->add_field('return', $returnURL);
            $this->paypal_lib->add_field('cancel_return', $cancelURL);
            $this->paypal_lib->add_field('notify_url', $notifyURL);

            // item information
            $this->paypal_lib->add_field('item_number', $booking_id_no);
            $this->paypal_lib->add_field('item_name', $item_name);
            $this->paypal_lib->add_field('amount', $price);  
            $this->paypal_lib->add_field('quantity', $seat);    
            $this->paypal_lib->add_field('discount_amount', $discount);   

            // additional information 
            $this->paypal_lib->add_field('custom', $ticket->tkt_passenger_id_no);
            $this->paypal_lib->image(base_url($appSetting->logo));
            // generates auto form
            $this->paypal_lib->paypal_auto_form(); 
        }
    }

     
    public function success()
    { 
        $data['title'] = display('ticket');
        #--------------------------------------
        //get the transaction data
        $paypalInfo = $this->input->get();

        //session token
        $token = $this->session->userdata('_tran_token');
        if ($token != $paypalInfo['item_number']) 
        {
            redirect('website/paypal/cancel');
        }   

        $data['item_number'] = $paypalInfo['item_number']; 
        $data['txn_id'] = $paypalInfo["tx"];
        $data['payment_amt'] = $paypalInfo["amt"];
        $data['currency_code'] = $paypalInfo["cc"];
        $data['status'] = $paypalInfo["st"];
        
        //pass the transaction data to view 
        $this->load->model('website_model');
        $data['appSetting'] = $this->website_model->read_setting();
        $data['ticket'] = $this->website_model->getTicket($paypalInfo['item_number']);  

        $data['module'] = "website";
        $data['page']   = "pages/ticket";   
        $this->load->view('layout', $data); 
    }


    public function cancel($booking_id_no = null, $passenger_id_no = null)
    {  
        #---------------Clean Database------------
        // delete booking
        if (!empty($booking_id_no)) {
            $this->db->where('id_no', $booking_id_no)->delete('ws_booking_history');
        }
        // delete user
        if (!empty($passenger_id_no)) {
            $this->db->where('id_no', $passenger_id_no)->delete('tkt_passenger');
        }
        #----------------------------------------

        $data['title'] = display('ticket');
        $this->load->model('website_model');
        $data['appSetting'] = $this->website_model->read_setting();
        $data['module'] = "website";
        $data['page']   = "pages/cancel";   
        $this->load->view('layout', $data);
    }
     

    /*
    * Add this ipn url to your paypal account
    * Profile and Settings > My selling tools > 
    * Instant Payment Notification (IPN) > update 
    * Notification URL: (eg:- http://domain.com/website/paypal/ipn/)
    * Receive IPN messages (Enabled) 
    */
    public function ipn()
    {
        //paypal return transaction details array
        $paypalInfo    = $this->input->post(); 

        $data['user_id']        = $paypalInfo['custom'];
        $data['product_id']     = $paypalInfo["item_number"];
        $data['txn_id']         = $paypalInfo["txn_id"];
        $data['payment_gross']  = $paypalInfo["mc_gross"];
        $data['currency_code']  = $paypalInfo["mc_currency"];
        $data['payer_email']    = $paypalInfo["payer_email"];
        $data['payment_status'] = $paypalInfo["payment_status"];

        $paypalURL = $this->paypal_lib->paypal_url;        
        $result    = $this->paypal_lib->curlPost($paypalURL,$paypalInfo);
        
        //check whether the payment is verified
        if(preg_match("/VERIFIED/i",$result)){
            //insert the transaction data into the database
            $this->load->model('paypal_model');
            $this->paypal_model->insertTransaction($data);
        }
    }
}