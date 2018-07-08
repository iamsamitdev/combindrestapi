<?php
require 'config.php';
require 'auth.php';

$cid = $_GET['cid'];

$sql = "SELECT * FROM course WHERE id='$cid'";
$query = mysqli_query($connect,$sql);

while($data = mysqli_fetch_assoc($query)){
    $courseData[] = $data;
}

// แปลงเป็น JSON
echo json_encode($courseData,JSON_HEX_QUOT | JSON_HEX_TAG);

?>