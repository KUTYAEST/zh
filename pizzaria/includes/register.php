<?php
require_once "database.php";
if (isset($_POST["confirm"])) {
    $email = mysqli_real_escape_string($connection, $_POST["email"]);
    $password = mysqli_real_escape_string($connection, $_POST["password"]);
    $confirmpassword = mysqli_real_escape_string($connection, $_POST["confirmpassword"]);
    if (empty($email || $password || $confirmpassword)) {
        header("Location: ../registration.php?error=uresmezo");
        exit();
    } else {
        $query = "SELECT * FROM `users` WHERE email = '$email'";
        $result = mysqli_query($connection, $query);
        if (mysqli_num_rows($result) == 1) {
            header("Location: ../registration.php?error=marletezoemail");
            exit();
        } else {
            if (filter_var($email, FILTER_VALIDATE_EMAIL) == false) {
                header("Location: ../registration.php?error=rosszemailformatum");
                exit();
            } else {
                if ($password != $confirmpassword) {
                    header("Location: ../registration.php?error=jelszonemegyezik");
                    exit();
                } else {
                    $hashpw = md5($password);
                    $sql_querry = "INSERT INTO `users`( `email`, `password`) VALUES ('$email','$hashpw')";

                    mysqli_query($connection, $sql_querry);
                    header("Location: ../registration.php?register=sikeres");
                }
            }
        }
    }
}
