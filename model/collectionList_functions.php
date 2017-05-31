<?php
	//create a function to retrieve all cards
	function get_user_card_collection($userID)
	{
		global $conn;
		//query the database to select all data from the cards table
		$sql = 'SELECT * FROM collectionList WHERE userID = :userID';		
		//use a prepared statement to enhance security
		$statement = $conn->prepare($sql);
		$statement->bindValue(':userID', $userID);
		$statement->execute();
		$result = $statement->fetchAll();
		$statement->closeCursor();
		return $result;
	}

	function add_card_to_collection($userID, $cardID, $quantity, $conditionCard)
	{
		global $conn;
		//query the database to select all data from the cards table
		$sql = 'INSERT INTO collectionList (userID, cardID, quantity, conditionCard) VALUES (:userID, :cardID, :quantity, :conditionCard)';		
		//use a prepared statement to enhance security
		$statement = $conn->prepare($sql);
		$statement->bindValue(':userID', $userID);
		$statement->bindValue(':cardID', $cardID);
		$statement->bindValue(':quantity', $quantity);
		$statement->bindValue(':conditionCard', $conditionCard);
		$statement->execute();
		$result = $statement->fetchAll();
		$statement->closeCursor();
		return $result;
	}
	function update_card_collection($userID, $cardID, $quantity)
	{
		global $conn;
		//query the database to select all data from the cards table
		$sql = 'UPDATE collectionList SET quantity = :quantity WHERE userID = :userID AND cardID = :cardID;';
		//use a prepared statement to enhance security
		$statement = $conn->prepare($sql);
		$statement->bindValue(':cardID', $cardID);
		$statement->bindValue(':quantity', $quantity);
		$statement->bindValue(':userID', $userID);
		$result = $statement->execute();
		$statement->closeCursor();
		return $result;
	}

	function delete_card_from_collection($userID, $cardID)
	{
		global $conn;
		//query the database to select all data from the cards table
		$sql = 'DELETE FROM collectionList WHERE userID = :userID AND cardID = :cardID';
		//use a prepared statement to enhance security
		$statement = $conn->prepare($sql);
		$statement->bindValue(':userID', $userID);
		$statement->bindValue(':cardID', $cardID);
		$result = $statement->execute();
		$statement->closeCursor();
		return $result;
	}
?>