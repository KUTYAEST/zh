<?php

session_start();


    unset($_SESSION["email"]);
    session_destroy();

    header("Location: ./registration.php?logout=success");
