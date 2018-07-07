<?php 
require 'config.php';
require 'auth.php';
//  API สำหรับการ login
if($_SERVER['REQUEST_METHOD'] === 'POST')
{
    // รับค่าจาก Client
    $inputJSON = file_get_contents('php://input');
    // แปลง JSON ที่รับมาเป็น Array
    $input = json_decode($inputJSON, TRUE);

    $username = $input['username'];
    $password = md5($input['password']);

    $sql = "SELECT id, fullname, username FROM users 
                WHERE username='$username' and password='$password'";
    $query = mysqli_query($connect,$sql);
    $rowCount = mysqli_num_rows($query);
    $data = mysqli_fetch_assoc($query);

    if($rowCount == 1){
        $userData = json_encode($data);
        echo '{"userData": ' .$userData . '}';
    }else{
        echo '{"Fail":{"text":"Bad request wrong username and password"}}';
    }

}else{
    http_response_code(400);
    echo '{"error":{"text":"Bad Request method"}}';
}

 ?>