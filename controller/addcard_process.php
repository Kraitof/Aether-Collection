<?php
  //start session management
  session_start();
  //connect to the database
    require('../model/database.php');
    //retrieve the functions
    require('../model/functions_cards.php');
    require('../model/functions_messages.php');
    require('../model/functions_users.php');
    require('../model/collectionList_functions.php');

	$userID = $_SESSION['id'];
	$cardName = $_POST['cardname'];
	$edition = "Amonkhet";
	// $edition = $_POST['edition'];
	$quantity = $_POST['quantity'];
	// $quantity = 1;
	$conditionCard = $_POST['conditionCard'];
	// $foilcards = $_POST['foilcards'];
	// $promocards = $_POST['promocards'];

	$result = get_singlecard($cardName, $edition);
	add_card_to_collection($userID, $result['cardID'], $quantity, $conditionCard);
	header('location: ../view/collectionBuilder.php');
?>
