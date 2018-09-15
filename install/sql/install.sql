
-- Dumping structure for table db_fleet_ticket.language
DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(100) NOT NULL,
  `english` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=437 DEFAULT CHARSET=utf8;

-- Dumping data for table db_fleet_ticket.language: ~306 rows (approximately)
DELETE FROM `language`;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES
  (1, 'login', 'Login'),
  (2, 'email', 'Email Address'),
  (3, 'password', 'Password'),
  (4, 'reset', 'Reset'),
  (5, 'dashboard', 'Dashboard'),
  (6, 'home', 'Home'),
  (7, 'profile', 'Profile'),
  (8, 'profile_setting', 'Profile Setting'),
  (9, 'firstname', 'First Name'),
  (10, 'lastname', 'Last Name'),
  (11, 'about', 'About'),
  (12, 'preview', 'Preview'),
  (13, 'image', 'Image'),
  (14, 'save', 'Save'),
  (15, 'upload_successfully', 'Upload Successfully!'),
  (16, 'user_added_successfully', 'User Added Successfully!'),
  (17, 'please_try_again', 'Please Try Again...'),
  (18, 'inbox_message', 'Inbox Messages'),
  (19, 'sent_message', 'Sent Message'),
  (20, 'message_details', 'Message Details'),
  (21, 'new_message', 'New Message'),
  (22, 'receiver_name', 'Receiver Name'),
  (23, 'sender_name', 'Sender Name'),
  (24, 'subject', 'Subject'),
  (25, 'message', 'Message'),
  (26, 'message_sent', 'Message Sent!'),
  (27, 'ip_address', 'IP Address'),
  (28, 'last_login', 'Last Login'),
  (29, 'last_logout', 'Last Logout'),
  (30, 'status', 'Status'),
  (31, 'delete_successfully', 'Delete Successfully!'),
  (32, 'send', 'Send'),
  (33, 'date', 'Date'),
  (34, 'action', 'Action'),
  (35, 'sl_no', 'SL No.'),
  (36, 'are_you_sure', 'Are You Sure ? '),
  (37, 'application_setting', 'Application Setting'),
  (38, 'application_title', 'Application Title'),
  (39, 'address', 'Address'),
  (40, 'phone', 'Phone'),
  (41, 'favicon', 'Favicon'),
  (42, 'logo', 'Logo'),
  (43, 'language', 'Language'),
  (44, 'left_to_right', 'Left To Right'),
  (45, 'right_to_left', 'Right To Left'),
  (46, 'footer_text', 'Footer Text'),
  (47, 'site_align', 'Application Alignment'),
  (48, 'welcome_back', 'Welcome Back!'),
  (49, 'please_contact_with_admin', 'Please Contact With Admin'),
  (50, 'incorrect_email_or_password', 'Incorrect Email/Password'),
  (51, 'select_option', 'Select Option'),
  (52, 'ftp_setting', 'Data Synchronize [FTP Setting]'),
  (53, 'hostname', 'Host Name'),
  (54, 'username', 'User Name'),
  (55, 'ftp_port', 'FTP Port'),
  (56, 'ftp_debug', 'FTP Debug'),
  (57, 'project_root', 'Project Root'),
  (58, 'update_successfully', 'Update Successfully'),
  (59, 'save_successfully', 'Save Successfully!'),
  (61, 'internet_connection', 'Internet Connection'),
  (62, 'ok', 'Ok'),
  (63, 'not_available', 'Not Available'),
  (64, 'available', 'Available'),
  (65, 'outgoing_file', 'Outgoing File'),
  (66, 'incoming_file', 'Incoming File'),
  (67, 'data_synchronize', 'Data Synchronize'),
  (68, 'unable_to_upload_file_please_check_configuration', 'Unable to upload file! please check configuration'),
  (69, 'please_configure_synchronizer_settings', 'Please configure synchronizer settings'),
  (70, 'download_successfully', 'Download Successfully'),
  (71, 'unable_to_download_file_please_check_configuration', 'Unable to download file! please check configuration'),
  (72, 'data_import_first', 'Data Import First'),
  (73, 'data_import_successfully', 'Data Import Successfully!'),
  (74, 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data! please check configuration / SQL file.'),
  (75, 'download_data_from_server', 'Download Data from Server'),
  (76, 'data_import_to_database', 'Data Import To Database'),
  (77, 'data_upload_to_server', 'Data Upload to Server'),
  (78, 'please_wait', 'Please Wait...'),
  (79, 'ooops_something_went_wrong', ' Ooops something went wrong...'),
  (80, 'module_permission_list', 'Module Permission List'),
  (81, 'user_permission', 'User Permission'),
  (82, 'add_module_permission', 'Add Module Permission'),
  (83, 'module_permission_added_successfully', 'Module Permission Added Successfully!'),
  (84, 'update_module_permission', 'Update Module Permission'),
  (85, 'download', 'Download'),
  (86, 'module_name', 'Module Name'),
  (87, 'create', 'Create'),
  (88, 'read', 'Read'),
  (89, 'update', 'Update'),
  (90, 'delete', 'Delete'),
  (91, 'module_list', 'Module List'),
  (92, 'add_module', 'Add Module'),
  (93, 'directory', 'Module Direcotory'),
  (94, 'description', 'Description'),
  (95, 'image_upload_successfully', 'Image Upload Successfully!'),
  (96, 'module_added_successfully', 'Module Added Successfully'),
  (97, 'inactive', 'Inactive'),
  (98, 'active', 'Active'),
  (99, 'user_list', 'User List'),
  (100, 'see_all_message', 'See All Messages'),
  (101, 'setting', 'Setting'),
  (102, 'logout', 'Logout'),
  (103, 'admin', 'Admin'),
  (104, 'add_user', 'Add User'),
  (105, 'user', 'User'),
  (106, 'module', 'Module'),
  (107, 'new', 'New'),
  (108, 'inbox', 'Inbox'),
  (109, 'sent', 'Sent'),
  (110, 'synchronize', 'Synchronize'),
  (111, 'data_synchronizer', 'Data Synchronizer'),
  (112, 'module_permission', 'Module Permission'),
  (113, 'backup_now', 'Backup Now!'),
  (114, 'restore_now', 'Restore Now!'),
  (115, 'backup_and_restore', 'Backup and Restore'),
  (116, 'captcha', 'Captcha Word'),
  (117, 'database_backup', 'Database Backup'),
  (118, 'restore_successfully', 'Restore Successfully'),
  (119, 'backup_successfully', 'Backup Successfully'),
  (120, 'filename', 'File Name'),
  (121, 'file_information', 'File Information'),
  (122, 'size', 'Size'),
  (123, 'backup_date', 'Backup Date'),
  (124, 'overwrite', 'Overwrite'),
  (125, 'invalid_file', 'Invalid File!'),
  (126, 'invalid_module', 'Invalid Module'),
  (127, 'remove_successfully', 'Remove Successfully!'),
  (128, 'install', 'Install'),
  (129, 'uninstall', 'Uninstall'),
  (130, 'tables_are_not_available_in_database', 'Tables are not available in database.sql'),
  (131, 'no_tables_are_registered_in_config', 'No tables are registerd in config.php'),
  (132, 'enquiry', 'Enquiry'),
  (133, 'read_unread', 'Read/Unread'),
  (134, 'enquiry_information', 'Enquiry Information'),
  (135, 'user_agent', 'User Agent'),
  (136, 'checked_by', 'Checked By'),
  (137, 'new_enquiry', 'New Enquiry'),
  (138, 'fleet', 'Fleet Management'),
  (139, 'fleet_type', 'Fleet Type'),
  (140, 'add', 'Add'),
  (141, 'list', 'List'),
  (142, 'fleet_facilities', 'Fleet Facilities'),
  (143, 'fleet_registration', 'Fleet Registration'),
  (144, 'reg_no', 'Registration No.'),
  (145, 'model_no', 'Model No.'),
  (146, 'engine_no', 'Engine No.'),
  (147, 'chasis_no', 'Chasis No.'),
  (148, 'total_seat', 'Total Seat'),
  (149, 'seat_numbers', 'Seat Number'),
  (150, 'owner', 'Owner'),
  (151, 'company', 'Company Name'),
  (152, 'trip', 'Trip Management'),
  (153, 'location', 'Location'),
  (154, 'route', 'Route'),
  (155, 'assign', 'Assign'),
  (156, 'close', 'Close'),
  (157, 'location_name', 'Location Name'),
  (158, 'google_map', 'Google Map'),
  (159, 'start_point', 'Start Point'),
  (160, 'end_point', 'End Point'),
  (161, 'route_name', 'Route Name'),
  (162, 'distance', 'Distance'),
  (163, 'approximate_time', 'Approximate Time'),
  (164, 'stoppage_points', 'Stoppage Points'),
  (165, 'fleet_registration_no', 'Fleet Registration No.'),
  (166, 'start_date', 'Start Date'),
  (167, 'end_date', 'End Date'),
  (168, 'driver_name', 'Driver Name'),
  (169, 'assistants_ids', 'Assistants'),
  (170, 'sold_ticket', 'Sold Ticket'),
  (171, 'total_income', 'Total Income'),
  (172, 'total_expense', 'Total Expense'),
  (173, 'total_fuel', 'Total Fuel'),
  (174, 'trip_comment', 'Trip Comment'),
  (175, 'closed_by', 'Closed by'),
  (176, 'ticket', 'Ticket Management'),
  (177, 'passenger', 'Passenger'),
  (178, 'middle_name', 'Middle Name'),
  (179, 'date_of_birth', 'Date of Birth'),
  (180, 'passenger_id', 'Passenger ID.'),
  (181, 'address_line_1', 'Address Line 1'),
  (182, 'address_line_2', 'Address Line 2'),
  (184, 'zip_code', 'Zip Code'),
  (186, 'name', 'Name'),
  (187, 'ac_available', 'AC available'),
  (188, 'trip_id', 'Trip ID.'),
  (189, 'book', 'Book'),
  (190, 'booking_id', 'Booking ID.'),
  (191, 'available_seats', 'Available Seats'),
  (192, 'select_seats', 'Select Seats'),
  (193, 'time', 'Time'),
  (194, 'offer_code', 'Offer Code'),
  (195, 'price', 'Price'),
  (196, 'discount', 'Discount'),
  (197, 'request_facilities', 'Request Facilities'),
  (198, 'pickup_location', 'Pickup Location'),
  (199, 'drop_location', 'Drop Location'),
  (200, 'amount', 'Amount'),
  (201, 'invalid_passenger_id', 'Invalid Passenger ID'),
  (202, 'invalid_input', 'Invalid Input'),
  (203, 'booking_date', 'Booking Date'),
  (204, 'cancelation_fees', 'Cancelation Fees'),
  (205, 'causes', 'Causes'),
  (206, 'comment', 'Comment'),
  (207, 'refund', 'Refund'),
  (208, 'refund_by', 'Refund by'),
  (209, 'feedback', 'Feedback'),
  (210, 'rating', 'Rating'),
  (211, 'blood_group', 'Blood Group'),
  (212, 'religion', 'Religion'),
  (219, 'details', 'Details'),
  (220, 'type_name', 'Type Name'),
  (221, 'view_details', 'View Details'),
  (222, 'document_pic', 'Document Picture'),
  (223, 'fitness_list', 'Fitness List'),
  (226, 'fitness_name', 'Fitness Name'),
  (227, 'fitness_description', 'Description'),
  (228, 'successfully_updated', 'Your Data Successfully Updated'),
  (229, 'fitness_period', 'Fitness Period List'),
  (230, 'fitness_id', 'Fitness Name'),
  (231, 'vehicle_id', 'Vehicles No'),
  (234, 'start_milage', 'Start Milage'),
  (235, 'end_milage', 'End Milage'),
  (236, 'agent', 'Agent'),
  (237, 'agent_first_name', 'First Name'),
  (238, 'agent_second_name', 'LastName'),
  (239, 'agent_company_name', 'Company Name'),
  (240, 'agent_document_id', 'Document ID'),
  (241, 'agent_pic_document', 'Document File'),
  (242, 'agent_phone', 'Phone'),
  (243, 'agent_mobile', 'Mobile No'),
  (244, 'agent_email', 'Email'),
  (245, 'agent_address_line_1', 'Address Line 1'),
  (246, 'agent_address_line_2', 'Address Line 2'),
  (247, 'agent_address_city', 'City'),
  (248, 'agent_address_zip_code', 'ZIP'),
  (249, 'agent_country', 'Country'),
  (252, 'sl', 'SL'),
  (253, 'route_id', 'Rout Name'),
  (254, 'vehicle_type_id', 'Vehicle Type'),
  (255, 'group_price_per_person', 'Group Price Per Person'),
  (256, 'group_size', 'Group Members'),
  (257, 'successfully_saved', 'Your Data Successfully Saved'),
  (258, 'account', 'Account'),
  (259, 'account_name', 'Account Name'),
  (260, 'account_type', 'Account Type'),
  (261, 'account_transaction', 'Account Transaction'),
  (262, 'account_id', 'Account Name'),
  (263, 'transaction_description', 'Transaction Details'),
  (265, 'pass_book_id', 'Passenger ID'),
  (267, 'payment_id', 'Payment ID'),
  (268, 'create_by_id', 'Created By'),
  (269, 'offer', 'Offer'),
  (270, 'offer_name', 'Offer Name'),
  (271, 'offer_start_date', 'Offer Start Date'),
  (272, 'offer_end_date', 'Offer Last Date'),
  (274, 'offer_discount', 'Discount'),
  (275, 'offer_terms', 'Offer Terms'),
  (276, 'offer_route_id', 'Rout Name'),
  (277, 'offer_number', 'Offer Number'),
  (280, 'seat_number', 'Seat No'),
  (281, 'available_seat', 'Available Seat'),
  (282, 'owner_name', 'Owner Name'),
  (283, 'agent_picture', 'Picture'),
  (284, 'account_add', 'Add Account'),
  (285, 'add_agent', 'Add Agent'),
  (286, 'hr', 'Human Resource'),
  (287, 'create_hr', 'Add Employee'),
  (288, 'serial', 'Sl'),
  (289, 'position', 'Position'),
  (290, 'phone_no', 'Phone No'),
  (291, 'email_no', 'Email'),
  (292, 'picture', 'Picture'),
  (293, 'first_name', 'First Name'),
  (294, 'second_name', 'Last Name'),
  (295, 'document_id', 'Documet Id'),
  (298, 'country', 'Country'),
  (299, 'city', 'City'),
  (300, 'zip', 'Zip '),
  (393, 'add_passenger', 'Add Passenger'),
  (394, 'search_tiket', 'Search Ticket'),
  (395, 'slogan', 'Slogan'),
  (396, 'website', 'Website'),
  (397, 'submit', 'Submit'),
  (398, 'customer_service', 'Customer Service'),
  (399, 'submit_successfully', 'Submit Successfully!'),
  (400, 'add_to_website', 'Add to Website'),
  (401, 'our_customers_say', 'Our Customers Say'),
  (402, 'website_status', 'Website Status'),
  (403, 'title', 'Title'),
  (405, 'total_fleet', 'Total Fleet'),
  (406, 'total_passenger', 'Total Passenger'),
  (407, 'todays_trip', 'Today\'s Trip'),
  (408, 'seats_available', 'Seats Available'),
  (409, 'no_trip_avaiable', 'No trip avaiable'),
  (410, 'booking', 'Booking'),
  (411, 'something_went_worng', 'Something went worng!'),
  (412, 'paypal_email', 'Paypal Email'),
  (413, 'currency', 'Currency'),
  (414, 'reports', 'Reports'),
  (415, 'search', 'Search'),
  (417, 'go', 'Go'),
  (418, 'all', 'All'),
  (419, 'filter', 'Filter'),
  (420, 'last_year_progress', 'Last Year Progress'),
  (421, 'download_document', 'Download Document'),
  (422, 'mobile', 'Mobile No.'),
  (424, 'account_list', 'Account List'),
  (425, 'add_income', 'Add Income'),
  (426, 'add_expense', 'Add Expense'),
  (427, 'agent_list', 'Agent List'),
  (428, 'add_fitness', 'Add Fitness'),
  (429, 'fitness', 'Fitness'),
  (430, 'add_fitness_period', 'Add Fitness Period'),
  (431, 'employee_type', 'Employee Type'),
  (432, 'employee_list', 'Employee List'),
  (433, 'add_offer', 'Add Offer'),
  (434, 'offer_list', 'Offer List'),
  (435, 'add_price', 'Add Price'),
  (436, 'price_list', 'Price List');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;


-- Dumping structure for table db_fleet_ticket.ws_setting
DROP TABLE IF EXISTS `ws_setting`;
CREATE TABLE IF NOT EXISTS `ws_setting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `about` varchar(255) DEFAULT NULL,
  `description` text,
  `paypal_email` varchar(100) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `google_map` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table db_fleet_ticket.ws_setting: ~1 rows (approximately)
DELETE FROM `ws_setting`;
/*!40000 ALTER TABLE `ws_setting` DISABLE KEYS */;
INSERT INTO `ws_setting` (`id`, `title`, `slogan`, `address`, `email`, `phone`, `favicon`, `logo`, `status`, `about`, `description`, `paypal_email`, `currency`, `google_map`) VALUES
  (2, 'Demo Application', 'Demo Slogan', '123, demo street, demo-city, 0000', 'admin@example.com', '0123456789', '', '', 1, 'About Section', '<h1 class="page-header" style="text-align: center;"><span style="color: #000000;">ANNUAIRE DES ASSOCIATIONS</span></h1>\r\n<div id="main_content" class="region region-content" style="text-align: center;">\r\n<div id="block-system-main" class="block block-system"><header></header>\r\n<div class="row article-summary no-childs content-image" style="text-align: justify;"><span style="color: #000000;">&nbsp;</span></div>\r\n<p style="text-align: center;"><span style="color: #000000;"><strong>Vous souhaitez vous investir dans la vie associative? Trouvez&nbsp; l\'association &eacute;tudiante qui vous ressemble ! Ou cr&eacute;ez la votre !</strong></span></p>\r\n<p style="text-align: center;"><span style="color: #000000;"><br /><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumis simply dummy text of the printing and typesetting industry. </span></p>\r\n</div>\r\n</div>', 'business@test.com', 'USD', '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d29215.021939977993!2d90.40923229999999!3d23.75173875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sbn!2sbd!4v1477987829881" width="600" height="450" frameborder="0" style="border:0" allowfullscreen=""></iframe>');
 

-- Dumping structure for table db_fleet_ticket.setting
DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `address` text,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table db_fleet_ticket.setting: ~0 rows (approximately)
DELETE FROM `setting`;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` (`id`, `title`, `address`, `email`, `phone`, `logo`, `favicon`, `language`, `site_align`, `footer_text`) VALUES
  (2, 'Fleet Ticketing System', '98 Green Road, Farmgate, Dhaka-1215.', 'bdtask@gmail.com', '0123456789', '', '', 'english', 'LTR', '2017©Copyright');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;

 

-- Dumping structure for table db_fleet_ticket.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `about` text,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table db_fleet_ticket.user: ~5 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`) VALUES
  (1, 'Henry', 'Smith', '', 'johnny@example.com', '827ccb0eea8a706c4c34a16891f84e7b', '', './assets/img/user/m.png', '2017-10-14 11:43:59', '2017-10-14 11:44:14', '::1', 1, 0),
  (2, 'Administrator', 'User', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'admin@example.com', '827ccb0eea8a706c4c34a16891f84e7b', '', './assets/img/user/m2.png', '2017-10-24 11:55:35', '2017-10-23 08:38:18', '::1', 1, 1);
  /*!40000 ALTER TABLE `user` ENABLE KEYS */;




-- Dumping structure for table db_fleet_ticket.acc_account_name
DROP TABLE IF EXISTS `acc_account_name`;
CREATE TABLE IF NOT EXISTS `acc_account_name` (
  `account_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) NOT NULL,
  `account_type` int(11) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table db_fleet_ticket.acc_account_name: ~4 rows (approximately)
DELETE FROM `acc_account_name`;
/*!40000 ALTER TABLE `acc_account_name` DISABLE KEYS */;
INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES
	(1, 'DBBL - Expense', 0),
	(2, 'IBBL', 1),
	(3, 'EBBL', 1),
	(5, 'IFIBL - Expense', 0);
/*!40000 ALTER TABLE `acc_account_name` ENABLE KEYS */;

-- Dumping structure for table db_fleet_ticket.acn_account_transaction
DROP TABLE IF EXISTS `acn_account_transaction`;
CREATE TABLE IF NOT EXISTS `acn_account_transaction` (
  `account_tran_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `transaction_description` varchar(255) NOT NULL,
  `amount` varchar(25) DEFAULT NULL,
  `pass_book_id` varchar(50) DEFAULT NULL,
  `trip_id` varchar(50) DEFAULT NULL,
  `payment_id` varchar(50) DEFAULT NULL,
  `create_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`account_tran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table db_fleet_ticket.acn_account_transaction: ~3 rows (approximately)
DELETE FROM `acn_account_transaction`;
/*!40000 ALTER TABLE `acn_account_transaction` DISABLE KEYS */;
INSERT INTO `acn_account_transaction` (`account_tran_id`, `account_id`, `transaction_description`, `amount`, `pass_book_id`, `trip_id`, `payment_id`, `create_by_id`) VALUES
	(1, 5, 'Expense', '1000', '', '', '', 2),
	(2, 2, '', '5000', '', '', '', 2),
	(3, 3, 'Income', '1000', '', '123456789', '12345', 2),
	(5, 2, '', '10', '', '', '', 2);
/*!40000 ALTER TABLE `acn_account_transaction` ENABLE KEYS */;

-- Dumping structure for table db_fleet_ticket.agent_info
DROP TABLE IF EXISTS `agent_info`;
CREATE TABLE IF NOT EXISTS `agent_info` (
  `agent_id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_first_name` varchar(30) DEFAULT NULL,
  `agent_second_name` varchar(150) DEFAULT NULL,
  `agent_company_name` varchar(150) DEFAULT NULL,
  `agent_document_id` varchar(150) DEFAULT NULL,
  `agent_pic_document` varchar(255) DEFAULT NULL,
  `agent_picture` varchar(255) DEFAULT NULL,
  `agent_phone` varchar(150) DEFAULT NULL,
  `agent_mobile` varchar(150) DEFAULT NULL,
  `agent_email` varchar(150) DEFAULT NULL,
  `agent_address_line_1` varchar(150) DEFAULT NULL,
  `agent_address_line_2` varchar(150) DEFAULT NULL,
  `agent_address_city` varchar(150) DEFAULT NULL,
  `agent_address_zip_code` varchar(150) DEFAULT NULL,
  `agent_country` varchar(150) DEFAULT NULL,
  `status` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`agent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
 
-- Dumping structure for table db_fleet_ticket.employee_history
DROP TABLE IF EXISTS `employee_history`;
CREATE TABLE IF NOT EXISTS `employee_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `second_name` varchar(30) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `phone_no` varchar(30) DEFAULT NULL,
  `email_no` varchar(30) DEFAULT NULL,
  `document_id` varchar(30) DEFAULT NULL,
  `document_pic` varchar(255) DEFAULT NULL,
  `address_line_1` varchar(150) DEFAULT NULL,
  `address_line_2` varchar(150) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `blood_group` varchar(6) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.employee_type
DROP TABLE IF EXISTS `employee_type`;
CREATE TABLE IF NOT EXISTS `employee_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(30) DEFAULT NULL,
  `details` varchar(100) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.enquiry
DROP TABLE IF EXISTS `enquiry`;
CREATE TABLE IF NOT EXISTS `enquiry` (
  `enquiry_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `enquiry` text,
  `checked` tinyint(1) DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`enquiry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
 

-- Dumping structure for table db_fleet_ticket.fit_fitness
DROP TABLE IF EXISTS `fit_fitness`;
CREATE TABLE IF NOT EXISTS `fit_fitness` (
  `fitness_id` int(11) NOT NULL AUTO_INCREMENT,
  `fitness_name` varchar(50) DEFAULT NULL,
  `fitness_description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`fitness_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.fleet_facilities
DROP TABLE IF EXISTS `fleet_facilities`;
CREATE TABLE IF NOT EXISTS `fleet_facilities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.fleet_registration
DROP TABLE IF EXISTS `fleet_registration`;
CREATE TABLE IF NOT EXISTS `fleet_registration` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(255) DEFAULT NULL,
  `fleet_type_id` int(11) DEFAULT NULL,
  `engine_no` varchar(255) DEFAULT NULL,
  `model_no` varchar(255) DEFAULT NULL,
  `chasis_no` varchar(255) DEFAULT NULL,
  `total_seat` int(11) DEFAULT NULL,
  `seat_numbers` text,
  `fleet_facilities` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `ac_available` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.fleet_type
DROP TABLE IF EXISTS `fleet_type`;
CREATE TABLE IF NOT EXISTS `fleet_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.ftn_fitness_period
DROP TABLE IF EXISTS `ftn_fitness_period`;
CREATE TABLE IF NOT EXISTS `ftn_fitness_period` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fitness_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_milage` float DEFAULT NULL,
  `end_milage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.message
DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.module
DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.module_permission
DROP TABLE IF EXISTS `module_permission`;
CREATE TABLE IF NOT EXISTS `module_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_module_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.ofr_offer
DROP TABLE IF EXISTS `ofr_offer`;
CREATE TABLE IF NOT EXISTS `ofr_offer` (
  `offer_id` int(11) NOT NULL AUTO_INCREMENT,
  `offer_name` varchar(100) DEFAULT NULL,
  `offer_start_date` date DEFAULT NULL,
  `offer_end_date` date DEFAULT NULL,
  `offer_code` varchar(50) DEFAULT NULL,
  `offer_discount` float DEFAULT NULL,
  `offer_terms` varchar(30) DEFAULT NULL,
  `offer_route_id` varchar(50) DEFAULT NULL,
  `offer_number` int(15) DEFAULT NULL,
  PRIMARY KEY (`offer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.pri_price
DROP TABLE IF EXISTS `pri_price`;
CREATE TABLE IF NOT EXISTS `pri_price` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `route_id` varchar(50) DEFAULT NULL,
  `vehicle_type_id` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `group_price_per_person` float DEFAULT NULL,
  `group_size` int(15) DEFAULT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.synchronizer_setting
DROP TABLE IF EXISTS `synchronizer_setting`;
CREATE TABLE IF NOT EXISTS `synchronizer_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.tkt_booking
DROP TABLE IF EXISTS `tkt_booking`;
CREATE TABLE IF NOT EXISTS `tkt_booking` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_no` varchar(20) DEFAULT NULL,
  `trip_id_no` varchar(20) DEFAULT NULL,
  `tkt_passenger_id_no` varchar(20) DEFAULT NULL,
  `trip_route_id` int(11) DEFAULT NULL,
  `pickup_trip_location` varchar(50) DEFAULT NULL,
  `drop_trip_location` varchar(50) DEFAULT NULL,
  `request_facilities` text,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `total_seat` int(11) DEFAULT NULL,
  `seat_numbers` varchar(255) DEFAULT NULL,
  `offer_code` varchar(255) DEFAULT NULL,
  `tkt_refund_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_no` (`id_no`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.tkt_feedback
DROP TABLE IF EXISTS `tkt_feedback`;
CREATE TABLE IF NOT EXISTS `tkt_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tkt_booking_id_no` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `comment` text,
  `rating` tinyint(1) DEFAULT '1',
  `add_to_website` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.tkt_passenger
DROP TABLE IF EXISTS `tkt_passenger`;
CREATE TABLE IF NOT EXISTS `tkt_passenger` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_no` varchar(20) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `address_line_1` varchar(255) DEFAULT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.tkt_referal
DROP TABLE IF EXISTS `tkt_referal`;
CREATE TABLE IF NOT EXISTS `tkt_referal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tkt_passenger_id_no` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.tkt_refund
DROP TABLE IF EXISTS `tkt_refund`;
CREATE TABLE IF NOT EXISTS `tkt_refund` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tkt_booking_id_no` varchar(20) DEFAULT NULL,
  `tkt_passenger_id_no` varchar(20) DEFAULT NULL,
  `cancelation_fees` float DEFAULT NULL,
  `causes` text,
  `comment` text,
  `refund_by_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tkt_refund_tkt_booking` (`tkt_booking_id_no`),
  CONSTRAINT `FK_tkt_refund_tkt_booking` FOREIGN KEY (`tkt_booking_id_no`) REFERENCES `tkt_booking` (`id_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
 

-- Dumping structure for table db_fleet_ticket.trip_assign
DROP TABLE IF EXISTS `trip_assign`;
CREATE TABLE IF NOT EXISTS `trip_assign` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_no` varchar(20) DEFAULT NULL,
  `fleet_registration_id` int(11) DEFAULT NULL,
  `trip_route_id` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `assistant_1` varchar(30) DEFAULT NULL,
  `assistant_2` varchar(30) DEFAULT NULL,
  `assistant_3` varchar(30) DEFAULT NULL,
  `sold_ticket` float NOT NULL DEFAULT '0',
  `total_income` float DEFAULT '0',
  `total_expense` float DEFAULT '0',
  `total_fuel` float DEFAULT '0',
  `trip_comment` text,
  `closed_by_id` int(11) DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.trip_location
DROP TABLE IF EXISTS `trip_location`;
CREATE TABLE IF NOT EXISTS `trip_location` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `google_map` text,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.trip_route
DROP TABLE IF EXISTS `trip_route`;
CREATE TABLE IF NOT EXISTS `trip_route` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `start_point` varchar(255) DEFAULT NULL,
  `end_point` varchar(255) DEFAULT NULL,
  `stoppage_points` varchar(255) DEFAULT NULL COMMENT 'Location ids',
  `distance` float DEFAULT NULL,
  `approximate_time` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.ws_booking_history
DROP TABLE IF EXISTS `ws_booking_history`;
CREATE TABLE IF NOT EXISTS `ws_booking_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_no` varchar(20) DEFAULT NULL,
  `trip_id_no` varchar(20) DEFAULT NULL,
  `tkt_passenger_id_no` varchar(20) DEFAULT NULL,
  `trip_route_id` int(11) DEFAULT NULL,
  `pickup_trip_location` varchar(50) DEFAULT NULL,
  `drop_trip_location` varchar(50) DEFAULT NULL,
  `request_facilities` text,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `total_seat` int(11) DEFAULT NULL,
  `seat_numbers` varchar(255) DEFAULT NULL,
  `offer_code` varchar(255) DEFAULT NULL,
  `tkt_refund_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_no` (`id_no`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.ws_offer
DROP TABLE IF EXISTS `ws_offer`;
CREATE TABLE IF NOT EXISTS `ws_offer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `position` tinyint(4) DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

 
-- Dumping structure for table db_fleet_ticket.ws_payments
DROP TABLE IF EXISTS `ws_payments`;
CREATE TABLE IF NOT EXISTS `ws_payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `txn_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payer_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
 