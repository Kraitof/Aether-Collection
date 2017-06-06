<?php
	//create a function to retrieve all cards
	function get_cards()
	{
		global $conn;
		//query the database to select all data from the cards table
		$sql = 'SELECT * FROM cards ORDER BY colour Desc' ;		
		//use a prepared statement to enhance security
		$statement = $conn->prepare($sql);
		$statement->execute();
		$result = $statement->fetchAll();
		$statement->closeCursor();
		return $result;
	}

	//create a function to retrieve all cards
	function get_cardNames()
	{
		global $conn;
		//query the database to select all data from the cards table
		$sql = 'SELECT * FROM cards ORDER BY cardName Desc' ;		
		//use a prepared statement to enhance security
		$statement = $conn->prepare($sql);
		$statement->execute();
		$result = $statement->fetchAll();
		$statement->closeCursor();
		return $result;
	}
		//create a function to retrieve all cards
	function get_cardNames_byID($cardID)
	{
		global $conn;
		$sql = 'SELECT * FROM cards WHERE cardID = :cardID';
		$statement = $conn->prepare($sql);
		$statement->bindValue(':cardID', $cardID);
		$statement->execute();
		$result = $statement->fetch();
		$statement->closeCursor();
		return $result;
	}

	function get_singlecard($cardName, $edition)
	{
		global $conn;
		$sql = 'SELECT * FROM cards WHERE cardName = :cardName AND edition = :edition';
		$statement = $conn->prepare($sql);
		$statement->bindValue(':cardName', $cardName);
		$statement->bindValue(':edition', $edition);
		$statement->execute();
		$result = $statement->fetch();
		$statement->closeCursor();
		return $result;
	}
	function get_singlecard_by_id($id)
	{
		global $conn;
		$sql = 'SELECT * FROM cards WHERE cardID = :cardID';
		$statement = $conn->prepare($sql);
		$statement->bindValue(':cardID', $id);
		$statement->execute();
		$result = $statement->fetch();
		$statement->closeCursor();
		return $result;
	}
	