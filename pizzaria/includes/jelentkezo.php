<?php
require_once "database.php";
if (isset($_POST["submit"])) {
    $kernev = mysqli_real_escape_string($connection, $_POST["knev"]);
    $veznev = mysqli_real_escape_string($connection, $_POST["veznev"]);
    $email = mysqli_real_escape_string($connection, $_POST["email"]);
    $telszam = mysqli_real_escape_string($connection, $_POST["telszam"]);
    $munkakor = mysqli_real_escape_string($connection, $_POST["munkakor"]);
    $rolad = mysqli_real_escape_string($connection, $_POST["rolad"]);
}
if (empty($veznev || $kernev || $email || $telszam || $munkakor || $rolad)) {
    header("Location: ../jelentkezes.php?error=uresmezo");
    exit();
}else{
    if (filter_var($email, FILTER_VALIDATE_EMAIL) == false) {
        header("Location: ../registration.php?error=rosszemailformatum");
        exit();
    
    
    
} else {
    $sql_querry = "INSERT INTO `jelentkezo`(`knev`, `veznev`, `email`, `telszam`, `munkakor`, `rolad`) VALUES ('$kernev','$veznev','$email','$telszam','$munkakor','$rolad')";
    mysqli_query($connection, $sql_querry);
    header("Location: ../jelentkezes.php?küldés=sikeres");
}
}