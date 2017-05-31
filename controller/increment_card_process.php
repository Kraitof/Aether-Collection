<?php
  //start session management
  session_start();
  //connect to the database
require('../model/database.php');
//retrieve the functions
require('../model/functions_messages.php');
require('../model/collectionList_functions.php');

	$userID = $_SESSION['id'];
	$quantity = $_GET['quantity'];
	$cardID = $_GET['cardID'];

	$quantity++;

	update_card_collection($userID, $cardID, $quantity);

	header('location: ../view/Users_collection.php');
?>
