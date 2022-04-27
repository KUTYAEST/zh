<?php
require_once "database.php";
session_start();
if (isset($_POST["login"])) {
    $email=mysqli_real_escape_string($connection,$_POST["email"]);
    $password=mysqli_real_escape_string($connection,$_POST["password"]);
    if (empty($email || $password)) {
        header("Location: ../login.php?error=uresmezo");
    }else{
       
        $hashpw=md5($password);
        $sql_querry="SELECT*FROM users WHERE email='$email'&& password = '$hashpw'";
        $result=mysqli_query($connection,$sql_querry);
        if (mysqli_num_rows($result)==1) {
            $_SESSION["email"]=$email;
            header("Location: ../login.php?login=sikeres");
        }else{
            header("Location: ../login.php?error=nincsilyenfiok");
        }
    }


}