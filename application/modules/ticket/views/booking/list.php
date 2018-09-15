<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4> 
                        <a href="<?php echo base_url('ticket/booking/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a>  
                    </h4>
                </div>
            </div>
            <div class="panel-body">
 
                <div class="">
                    <table class="datatable2 table table-bordered ">
                        <thead>
                            <tr>
                                <th><?php echo display('sl_no') ?></th>
                                <th><?php echo display('booking_date') ?></th>
                                <th><?php echo display('booking_id') ?></th>
                                <th><?php echo display('passenger_id') ?></th>
                                <th><?php echo display('trip_id') ?></th>
                                <th><?php echo display('route_name') ?></th>
                                <th><?php echo display('total_seat') ?></th>
                                <th><?php echo display('price') ?></th>
                                <th><?php echo display('discount') ?></th>
                                <th><?php echo display('seat_numbers') ?></th>
                                <th><?php echo display('pickup_location') ?></th>
                                <th><?php echo display('drop_location') ?></th>
                                <th><?php echo display('fleet_facilities') ?></th>
                                <th><?php echo display('offer_code') ?></th>
                                <th><?php echo display('date') ?></th>
                                <th><?php echo display('action') ?></th> 
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (!empty($bookings)) ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($bookings as $booking) { ?>
                            <tr class="<?php echo (!empty($booking->tkt_refund_id) ? "bg-danger" : null ) ?>">
                                <td><?php echo $sl++; ?></td>
                                <td><?php echo $booking->booking_date; ?></td>
                                <td><?php echo $booking->id_no; ?></td>
                                <td><?php echo $booking->tkt_passenger_id_no; ?></td>
                                <td><?php echo $booking->trip_id_no; ?></td>
                                <td><?php echo $booking->route_name; ?></td>
                                <td><?php echo $booking->total_seat; ?></td>
                                <td><?php echo $booking->price; ?></td>
                                <td><?php echo $booking->discount; ?></td>
                                <td><?php echo $booking->seat_numbers; ?></td>
                                <td><?php echo $booking->pickup_trip_location; ?></td>
                                <td><?php echo $booking->drop_trip_location ?></td>
                                <td><?php echo $booking->request_facilities; ?></td>
                                <td><?php echo $booking->offer_code; ?></td>
                                <td><?php echo $booking->date; ?></td>
                                <td>
                                <?php if($this->permission->method('ticket','read')->access()): ?>
                                    <a href="<?php echo base_url("ticket/booking/view/$booking->id_no") ?>" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="left" title="View"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                <?php endif; ?>

                                <?php if($this->permission->method('ticket','update')->access() && empty($booking->tkt_refund_id)): ?>
                                    <a href="<?php echo base_url("ticket/refund/form?bid=$booking->id_no&pid=$booking->tkt_passenger_id_no") ?>" class="btn btn-warning btn-sm" data-toggle="tooltip" data-placement="left" title="Refund"><i class="fa fa-undo" aria-hidden="true"></i></a>
                                <?php endif; ?>

                                <?php if($this->permission->method('ticket','delete')->access()): ?>
                                    <a href="<?php echo base_url("ticket/booking/delete/$booking->id") ?>" onclick="return confirm('<?php echo display("are_you_sure") ?>')" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="right" title="Delete "><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                <?php endif; ?>
                                </td>
                            </tr>
                            <?php } ?> 
                        </tbody>
                    </table>
                    <?= $links ?>
                </div>
            </div> 
        </div>
    </div>
</div>

 