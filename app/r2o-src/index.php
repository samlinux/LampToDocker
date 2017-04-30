<?php
/**
 * Test page for demonstration
 * 
 * @author Roland Bole 
 */

include_once("include.php");

$html = "";
$html .= "<h1>r2o.com</h1>";
$html .= "<p>client-domain: ".$_SERVER["HTTP_HOST"]."</p>";
$html .= "<h1>MySql/PDO driver </h1>";

// create connection
try {
	$pdo = new PDO('mysql:host='.$dbName.'_db_1;dbname=r2o', 'root', '1234567');
}
catch (PDOException $e) {
	// if there is an error, we will cancel 
	echo 'Error: ' . $e->getMessage();
	exit();
}

// do sql test query
$sql = 'SELECT * FROM tblInfo';
$stmt = $pdo->prepare($sql);
$stmt->execute();

// prepare some output
while ($row = $stmt->fetch()){
	$html .= '<div>' . $row['info'].'</div>';
}

// close connection
$pdo = null;

// export on single point
echo $html;
