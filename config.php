<?php
define('DBSERVER', 'b97824gy.beget.tech'); // Database server
define('DBUSERNAME', 'b97824gy_account'); // Database username
define('DBPASSWORD', 'Account123!'); // Database password
define('DBNAME', 'b97824gy_account'); // Database name
 
/* connect to MySQL database */
$db = mysqli_connect(DBSERVER, DBUSERNAME, DBPASSWORD, DBNAME);
 
// Check db connection
if($db === false){
    die("Error: connection error. " . mysqli_connect_error());
}
?>
