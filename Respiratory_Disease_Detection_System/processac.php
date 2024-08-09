<?php
if(isset($_POST['save']))
{	 
	 
	 $a = $_POST['a'];
$b = $_POST['b'];

$c = $_POST['c'];

$d = $_POST['d'];

$e = $_POST['e'];

$f = $_POST['f'];

$g = $_POST['g'];
$h = $_POST['h'];

$i = $_POST['i'];



}

$mysqli = new mysqli("localhost", "root", "", "crm"); 
  
if($mysqli === false){ 
    die("ERROR: Could not connect. " 
            . $mysqli->connect_error); 
} 
 $sql = "INSERT INTO sens (a,b,c,d,e,f,g,h,i,pred)
VALUES ('$a','$b','$c','$d','$e','$f','$g','$h','$i','')";

if($mysqli->query($sql) === true){ 
    echo "Records was updated successfully."; 
} else{ 
    echo "ERROR: Could not able to execute $sql. "  
                                        . $mysqli->error; 
} 
$mysqli->close(); 

?>
<?php
header( "Location: create-ticket1.php");
exit ;
?>
