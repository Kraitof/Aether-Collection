<?php
	function editRank($rank, $userID) {
		global $conn;
		$sql = 'UPDATE user SET rank = ? WHERE userID = ?';
		$statement = $conn->prepare($sql);
		$statement->execute(array($rank, $userID));
		$result = $statement->fetchAll();
	
		return $result;
	}

	function isAdmin()
	{
		global $conn;
		$sql = 'SELECT * FROM user WHERE username = :username AND rank = 2';
		$statement = $conn->prepare($sql);
		$statement->bindValue(':username', $_SESSION['user']);
		$statement->execute();
		$result = $statement->fetchAll();
		$statement->closeCursor();
		$count = $statement->rowCount();	
		if ($count==0) {
			return false;
		}
		return true;
	}

	function fetchUsers()
	{
		global $conn;
		$sql = 'SELECT * FROM user';
		$statement = $conn->prepare($sql);
		$statement->execute();
		$result = $statement->fetchAll();
		$statement->closeCursor();
		return $result;
	}


	//create a function to retrieve the total number of matching usernames
	function count_username($username)
	{
		global $conn;
		$sql = 'SELECT * FROM user WHERE username = :username';
		$statement = $conn->prepare($sql);
		$statement->bindValue(':username', $username);
		$statement->execute();
		$result = $statement->fetchAll();
		$statement->closeCursor();
		$count = $statement->rowCount();	
		return $count;
	}

	function get_user_id($username)
	{
		global $conn;
		$sql = 'SELECT userID FROM user WHERE username = :username';
		$statement = $conn->prepare($sql);
		$statement->bindValue(':username', $username);
		$statement->execute();
		$result = $statement->fetch();
		$statement->closeCursor();
		return $result;
	}

	//create a function to add a new user
	function add_user($firstName, $lastName, $email, $username, $password, $salt)
	{
		global $conn;
		$sql = "INSERT INTO user (firstName, lastName, email, username, password, salt) VALUES (:firstName, :lastName, :email, :username, :password, :salt)";
		$statement = $conn->prepare($sql);
		$statement->bindValue(':firstName', $firstName);
		$statement->bindValue(':lastName', $lastName);
		$statement->bindValue(':email', $email);
		$statement->bindValue(':username', $username);
		$statement->bindValue(':password', $password);
		$statement->bindValue(':salt', $salt);
		$result = $statement->execute();
		$statement->closeCursor();
		return $result;			
	}

	//create a function to add a new user
	function delete_user($userID)
	{
		global $conn;
		$sql = "DELETE FROM user WHERE userID = :userID";
		$statement = $conn->prepare($sql);
		$statement->bindValue(':userID', $userID);
		$result = $statement->execute();
		$statement->closeCursor();
		return $result;			
	}

	//create a function to retrieve salt
	function retrieve_salt($username)
	{
		global $conn;
		$sql = 'SELECT * FROM user WHERE username = :username';
		$statement = $conn->prepare($sql);
		$statement->bindValue(':username', $username);
		$statement->execute();
		$result = $statement->fetch();
		$statement->closeCursor();
		return $result;
	}

	//create a function to login
	function login($username, $password)
	{
		global $conn;
		$sql = 'SELECT * FROM user WHERE username = :username AND password = :password';
		$statement = $conn->prepare($sql);
		$statement->bindValue(':username', $username);
		$statement->bindValue(':password', $password);
		$statement->execute();
		$result = $statement->fetchAll();
		$statement->closeCursor();
		$count = $statement->rowCount();	
		return $count;
	}
?>