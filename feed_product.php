<?php 
require 'config.php';
require 'auth.php';

if($_SERVER['REQUEST_METHOD'] === 'GET')
{

    $sql = "SELECT * FROM products ORDER BY id DESC";
    $query = mysqli_query($connect,$sql);

    while($data = mysqli_fetch_assoc($query)){
        $courseArray[] = $data;
    }

    echo json_encode($courseArray);

}else{
    http_response_code(400);
    echo '{"error":{"text":"Bad Request method"}}';
}

 ?>