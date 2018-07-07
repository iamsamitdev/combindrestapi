<?php 
require 'config.php';
require 'auth.php';

if($_SERVER['REQUEST_METHOD'] === 'POST'){
    // รับค่าจาก Client
    $inputJSON = file_get_contents('php://input');
    // แปลง JSON ที่รับมาเป็น Array
    $input = json_decode($inputJSON, TRUE);

    $username   = $input['username'];
    $password   = md5($input['password']);
    $fullname     = $input['fullname'];
    $email 		 =  $input['email'];
    $tel 		 		 =  $input['tel'];
    $status		 = $input['status'];
    
    // เช็คค่าว่าง
    if(!empty($username) and !empty($password) and !empty($fullname) and !empty($email) and !empty($tel) and !empty($status)){
        $sql = "INSERT INTO users(username,password,fullname,email,tel,status) 
        			VALUES('$username','$password','$fullname',' $email','$tel','$status')";
        $query = mysqli_query($connect,$sql);
        $last_insert_id = mysqli_insert_id($connect);

        if($query){
            $data = array(
                'id'                => $last_insert_id,
                'username'  => $input['username'],
                'password'  => $input['password'],
                'fullname'    => $input['fullname'],
                'email'         => $input['email']
            );
            $userData = json_encode($data);
            echo '{"userData": ' .$userData . '}';
        }else{
            echo '{"Fail":{"text":"Insert data fail"}}';
        }
    }else{
        echo '{"Fail":{"text":"Invalid data please fill"}}';
    }

}else{
    http_response_code(400);
    echo '{"error":{"text":"Bad Request method"}}';
}

?>