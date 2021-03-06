<div class="clearfix"></div>

<div class="ticket-info">
    <div class="container">
        <div class="row">

            <div class="col-sm-12 col-md-8 col-md-offset-2"  style="margin-bottom:20px">
                 <div class="btn-group">
                    <button type="button" onclick="printContent('PrintMe')" class="btn btn-danger"><i class="fa fa-print"></i></button> 
                </div>
            </div>


            <div class="col-sm-12 col-md-8 col-md-offset-2" id="PrintMe">
                <div class="ticket-content">
                    <div class="table-responsive">
                        <table style="width:100%;">
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="ticket-logo">
                                            <img src="<?php echo base_url(!empty($appSetting->logo)?$appSetting->logo:null) ?>" class="img-responsive" alt="">
                                        </div>
                                    </td>
                                    <td style="vertical-align:middle;">
                                        <p class="text-right"><strong>Phone : </strong><?php echo (!empty($appSetting->phone)?$appSetting->phone:null) ?></p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
 
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <td><strong>Pickup Location:</strong> <?php echo (!empty($ticket->pickup_trip_location)?$ticket->pickup_trip_location:null) ?></td>
                                    <td><strong>Drop Location:</strong> <?php echo (!empty($ticket->drop_trip_location)?$ticket->drop_trip_location:null) ?></td>
                                    <td><strong>Date:</strong> <?php echo (!empty($ticket->booking_date)?$ticket->booking_date:null) ?></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="passanger-info table-responsive">
                        <div class="col-sm-12">
                            <table width="100%">
                                <tr>
                                    <td>
                                        <ul class="list-unstyled">
                                            <li><strong>Passanger name :</strong>
                                            <?php echo (!empty($ticket->passenger_name)?$ticket->passenger_name:null) ?>
                                            </li>

                                            <li><strong>Booking Id :</strong>
                                                <?php echo (!empty($ticket->booking_id_no)?$ticket->booking_id_no:null) ?></li>

                                            <li><strong>Rout Name :</strong>
                                            <?php echo (!empty($ticket->route_name)?$ticket->route_name:null) ?></li>
                                            
                                            <li><strong>Facility :</strong>
                                                <ul class="list-inline">
                                                <?php
                                                    foreach(explode(',', $ticket->request_facilities) AS $facilities) 
                                                    {
                                                        echo (!empty(trim($facilities))?"<li>&check;$facilities</li>":null);
                                                    }
                                                ?>
                                                </ul>
                                            </li>
                                        </ul>
                                    </td>
                                    <td>  
                                        <dl class="list-unstyled text-right">
                                            <li>
                                            <strong>Passenger ID :</strong> 
                                            <?php echo (!empty($ticket->tkt_passenger_id_no)?$ticket->tkt_passenger_id_no:null) ?></li>
                                            <li>
                                            <strong>Trip ID :</strong> 
                                            <?php echo (!empty($ticket->trip_id_no)?$ticket->trip_id_no:null) ?></li>
                                        </dl>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>

                    <!-- Ticket Information -->
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Seat name</th>
                                            <th>Quantity</th>
                                            <th class="text-right">Amount</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><?php echo (!empty($ticket->seat_serial)?(str_replace(',', ', ', $ticket->seat_serial)):null) ?></td>
                                            <td><?php echo (!empty($ticket->quantity)?$ticket->quantity:0) ?></td>
                                            <th class="text-right"><?php echo $price = (!empty($ticket->price)?$ticket->price:0) ?></th>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <th>Discount</th>
                                            <th class="text-right"><?php echo $discount = (!empty($ticket->discount)?$ticket->discount:0) ?></th>
                                        </tr> 
                                        <tr>
                                            <td></td>
                                            <th>Grand Total</th>
                                            <th class="text-right"><?php echo $price-$discount ?></th>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>

 

            <!-- Paypal transection information -->
            <div class="col-sm-12 col-md-8 col-md-offset-2">
                <div class="ticket-content" style="margin-top:20px">
                    <h4>Payment Information</h4>
                    <span>Your payment was successful, thank you for purchase.</span><br/>
                    <span>Item Number : 
                        <strong><?php echo $item_number; ?></strong>
                    </span><br/>
                    <span>TXN ID : 
                        <strong><?php echo $txn_id; ?></strong>
                    </span><br/>
                    <span>Amount Paid : 
                        <strong><?php echo $payment_amt.' '.$currency_code; ?></strong>
                    </span><br/>
                    <span>Payment Status : 
                        <strong><?php echo $status; ?></strong>
                    </span><br/>
                </div>
            </div>

        </div>
    </div>
</div>