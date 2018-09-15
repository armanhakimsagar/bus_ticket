<?php echo form_open('website/search/checkout', array('class'=>'row', 'id'=>'checkoutFrm')); ?>
    <div class="col-sm-5">
        <div class="passenger-form">
            <h4>Passenger Details</h4>
            <input type="hidden" name="booking_id_no" value="<?php echo (!empty($booking->id_no)?$booking->id_no:null) ?>">
            <input type="hidden" name="passenger_id_no" value="<?php echo (!empty($booking->tkt_passenger_id_no)?$booking->tkt_passenger_id_no:null) ?>">
            <div class="form-group">
                <label>Name *</label>
                <div class="row">
                    <div class="col-sm-6">
                        <input name="firstname" class="form-control" type="text" placeholder="First Name" id="name" value="">
                    </div>
                    <div class="col-sm-6">
                        <input name="lastname" class="form-control" type="text" placeholder="Last Name" value="">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label>Phone *</label>
                <input type="number" name="phone" class="form-control" id="phone" placeholder="Phone number">
            </div>
            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" class="form-control" id="email" placeholder="Email address">
            </div>
            <div class="form-group">
                <label>Address</label>
                <textarea name="address_line_1" class="form-control" rows="3" placeholder="Address"></textarea>
            </div>
        </div>
    </div>
    <div class="col-sm-7">
        <div class="journey-details">
            <h4>Journey Details</h4>  
            <dl class="dl-horizontal">
                <dt>Route</dt>
                <dd>&nbsp; 
                    <?php echo (!empty($booking->route_name)?$booking->route_name:null) ?> 
                </dd>
                <dt>Pickup location</dt>
                <dd>&nbsp; 
                    <?php echo (!empty($booking->pickup_trip_location)?$booking->pickup_trip_location:null) ?>  
                </dd>
                <dt>Drop location</dt>
                <dd>&nbsp;  
                    <?php echo (!empty($booking->drop_trip_location)?$booking->drop_trip_location:null) ?> 
                </dd> 
                <dt>Request facilities</dt>
                <dd>&nbsp;  
                    <?php echo (!empty($booking->request_facilities)?$booking->request_facilities:'None') ?> 
                </dd> 
                <dt>Booking date</dt>
                <dd>&nbsp;
                    <?php echo (!empty($booking->booking_date)?$booking->booking_date:null) ?>
                </dd>
            </dl>
        </div>
        <div class="pament-details">

            <table class="table table table-bordered table-striped">
                <tbody class="itemNumber">
                    <tr>
                        <td class="text-right" style="width: 60%;">Seat(s)</td>
                        <th class="text-right"><?php echo (!empty($booking->seat_numbers)?$booking->seat_numbers:0) ?></th>
                    </tr>
                    <tr>
                        <td class="text-right">Price</td>
                        <th class="text-right"><?php echo (!empty($booking->price)?($booking->price/$booking->total_seat):0) ?></th>
                    </tr>
                    <tr>
                        <td class="text-right">Total</td>
                        <th class="text-right"><?php echo (!empty($booking->price)?$booking->price:0) ?></th>
                    </tr>
                    <tr>
                        <td class="text-right">Discount</td>
                        <th class="text-right"><?php echo (!empty($booking->discount)?$booking->discount:0) ?></th>
                    </tr>
                    <tr>
                        <td class="text-right"><b>Grand total</b></td>
                        <th class="text-right"><?php echo (!empty($booking->price)?($booking->price-$booking->discount):0) ?></th>
                    </tr>
                </tbody>
            </table> 

            <div style="margin-top:20px">
                <button class="btn btn-block btn-primary">Paypal checkout</button>
            </div>

            <table style="margin-top:20px">
                <tbody>  
<!--                     <tr>
                        <td style="width:50%"><a href="https://www.paypal.com/uk/webapps/mpp/paypal-popup" title="How PayPal Works" onclick="javascript:window.open('https://www.paypal.com/uk/webapps/mpp/paypal-popup', 'WIPaypal', 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-200px.png" border="0" alt="PayPal Logo" width="120"></a></td> 
                    </tr> -->
                </tbody>
            </table>
        </div>
    </div>   
<?php echo form_close(); ?>
 

<script type="text/javascript">
$(document).ready(function(){ 

    var checkoutFrm   = $("#checkoutFrm");
    var outputPreview = $('#outputPreview');

    checkoutFrm.on('submit', function(e) {
        e.preventDefault(); 

        $.ajax({
            method: checkoutFrm.attr('method'),
            url   : checkoutFrm.attr('action'),
            data  : checkoutFrm.serialize(),
            dataType: 'json',
            success: function(data)
            {
                if (data.status == true)
                {
                    outputPreview.removeClass("hide").removeClass("alert-danger").addClass('alert-success').html(data.success);
                    
                    setInterval(function(){
                        window.location.href = '<?= base_url() ?>'+'website/paypal/buy/'+data.booking_id_no;
                    }, 1000);
                } else {
                    outputPreview.removeClass("hide").removeClass("alert-success").addClass('alert-danger').html(data.exception);
                }
            },
            error: function()
            {
                alert('failed...');
            }
        }); 
    });

});
</script>



