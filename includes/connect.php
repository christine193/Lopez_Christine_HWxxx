<?php

$host = "localhost";
$user = "root";
$password = "";
$db = "db_pie";

$conn = mysqli_connect($host, $user, $password, $db);

if (isset($_GET["info"])) {
    $ref = $_GET["info"];

    $myQuery = "SELECT * FROM tbl_piechart WHERE info='$ref'";

    $result = mysqli_query($conn, $myQuery);
    $rows = array();

    while($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    echo json_encode($rows);
}


?>