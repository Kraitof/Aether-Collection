<?php
	header('Content-disposition: attachment; filename=UserData.txt');
	header('Content-type: text/plain');

	//start session management
    session_start();
    //connect to the database
    require('../model/database.php');
    //retrieve the functions
    require('../model/functions_cards.php');
    require('../model/collectionList_functions.php');
    require('../model/functions_messages.php');
    require('../model/functions_users.php');

	/* example in $data array */
	$data['cardName'] = $_GET['cardName'];
	$data['quantity'] = $_GET['quantity'];
	$data['conditionCard'] = $_GET['conditionCard'];

	/* Generate content of text file. */
	echo "Card Name: " . $data['cardName'] . "\r\n";
	echo "===================\r\n";
	echo "QTY :" . $data['quantity'] . "\r\n";
	echo "Condition: " . $data['conditionCard'] . "\r\n";
?>