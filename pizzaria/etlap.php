<?php
require_once './includes/database.php';
$sql = "SELECT * FROM pizzaetlap;";
$sql2 ="SELECT * FROM `frissensultetlap`";
$sql3 ="SELECT * FROM `tesztaetlap`";
$sql4 ="SELECT * FROM `koretetlap`";
$sql5 ="SELECT * FROM `levesetlap`";
$sql6 ="SELECT * FROM `egytaletlap`";
$sql7 ="SELECT * FROM `eloeteletlap`";
$sql8 ="SELECT * FROM `gyrosetlap`";
$sql9 ="SELECT * FROM `tortillaetlap`";
$sql10 ="SELECT * FROM `savanyuetlap`";
$sql11 ="SELECT * FROM `pancakeetlap`";
$sql12 ="SELECT * FROM `dessertetlap`";
$sql13 ="SELECT * FROM `uditoetlap`";
$sql14 ="SELECT * FROM `szoszetlap`";
$sql15 ="SELECT * FROM `evoeszkoz`";


$pizza = mysqli_query($connection, $sql);
$frissensult = mysqli_query($connection, $sql2);
$teszta = mysqli_query($connection, $sql3);
$koret = mysqli_query($connection, $sql4);
$leves = mysqli_query($connection, $sql5);
$egytal = mysqli_query($connection, $sql6);
$eloetel = mysqli_query($connection, $sql7);
$gyros = mysqli_query($connection, $sql8);
$tortilla = mysqli_query($connection, $sql9);
$savanyu = mysqli_query($connection, $sql10);
$pancake = mysqli_query($connection, $sql11);
$dessert = mysqli_query($connection, $sql12);
$udito = mysqli_query($connection, $sql13);
$szosz = mysqli_query($connection, $sql14);
$evoeszkoz = mysqli_query($connection, $sql15);
?>
<!DOCTYPE html>
<html lang="hu">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>két egér</title>
    <!-- bootsrtap meghivasa -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <!-- bootstrap vege -->
    <link rel="stylesheet" href="etlap.css">
</head>

<body>
    
    <!-- navbar -->
    <?php require_once "navbar.php" ?>
    <!-- navbar vege -->
    <h1>+36/1-290-2288
    <br>
    ketegerbt@gmail.com
        <br>
        Rendeljen nálunk!
        
    </h1>    
    <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-6"><h1 style="text-align:center">Pizzaétlap</h1></div>
            <div class="col"></div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <?php 
            while($row = mysqli_fetch_assoc($pizza)){
                echo '<div class="col-3">
                <div class="card" style="width: 18rem; height:14rem;">
                    <div class="card-body">
                        <h5 class="card-title">'.$row['pzzak'].'</h5>
                        <h6 class="card-subtitle mb-2 text-muted">'.$row['feltet'].'</h6>
                        <p class="card-text">'.$row['meret'].' cm= '.$row['ar'].' Ft</p>
                        <p class="card-text">'.$row['meret2'].' cm= '.$row['ar2'].' Ft</p>
                        <p class="card-text">'.$row['meret3'].' cm= '.$row['ar3'].' Ft</p>
                    </div>
                </div>
            </div><br>';
            }

            ?>

        </div>
        <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-6"><h1 style="text-align:center">Frissensültek</h1></div>
            <div class="col"></div>
        </div>
    </div>
        <div class="container">
        <div class="row">
            <?php 
            while($row = mysqli_fetch_assoc($frissensult)){
                echo '<div class="col">
                <div class="card" style="width: 21rem;height:8rem">
                    <div class="card-body">
                        <h5 class="card-title">'.$row['frissensultek'].'</h5>
                        <h6 class="card-subtitle mb-2 text-mutedw">'.$row['feltet'].'</h6>
                        <p class="card-text">'.$row['ar'].' Ft</p>
                        
                    </div>
                </div>
            </div>';
            }

            ?>

        </div>
    </div>
    </div>
        <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-6"><h1 style="text-align:center">Tészták</h1></div>
            <div class="col"></div>
        </div>
    </div>
        <div class="container">
        <div class="row">
            <?php 
            while($row = mysqli_fetch_assoc($teszta)){
                echo '<div class="col-6">
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">'.$row['tesztak'].'</h5>
                        <h6 class="card-subtitle mb-2 text-mutedw">'.$row['feltet'].'</h6>
                        <p class="card-text">'.$row['ar'].' Ft</p>
                        
                    </div>
                </div>
            </div>';
            }

            ?>
            </div>
    </div>
    </div>
        <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-6"><h1 style="text-align:center">Köretek</h1></div>
            <div class="col"></div>
        </div>
    </div>
        <div class="container">
        <div class="row">
            <?php 
            while($row = mysqli_fetch_assoc($koret)){
                echo '<div class="col-3">
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">'.$row['koretek'].'</h5>
                        <p class="card-text">'.$row['ar'].' Ft</p>
                        
                    </div>
                </div>
            </div>';
            }

            ?>
            </div>
    </div>
    </div>
        <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-6"><h1 style="text-align:center">Levesek</h1></div>
            <div class="col"></div>
        </div>
    </div>
        <div class="container">
        <div class="row">
            <?php 
            while($row = mysqli_fetch_assoc($leves)){
                echo '<div class="col">
                <div class="card" style="width: 21rem;height:8rem">
                    <div class="card-body">
                        <h5 class="card-title">'.$row['levesek'].'</h5>
                        <h6 class="card-subtitle mb-2 text-mutedw">'.$row['feltet'].'</h6>
                        <p class="card-text">'.$row['ar'].' Ft</p>
                        
                    </div>
                </div>
            </div>';
            }

            ?>
            </div>
        <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-6"><h1 style="text-align:center">Egytálételek</h1></div>
            <div class="col"></div>
        </div>
    </div>
        <div class="container">
        <div class="row">
            <?php 
            while($row = mysqli_fetch_assoc($egytal)){
                echo '<div class="col-6">
                <div class="card" style="width: 21rem;height:8rem">
                    <div class="card-body">
                        <h5 class="card-title">'.$row['egytal'].'</h5>
                        <h6 class="card-subtitle mb-2 text-mutedw">'.$row['feltet'].'</h6>
                        <p class="card-text">'.$row['ar'].' Ft</p>
                        
                    </div>
                </div>
            </div>';
            }

            ?>
            </div>
        <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-6"><h1 style="text-align:center">Előételek</h1></div>
            <div class="col"></div>
        </div>
    </div>
        <div class="container">
        <div class="row">
            <?php 
            while($row = mysqli_fetch_assoc($eloetel)){
                echo '<div class="col">
                <div class="card" style="width: 21rem;height:8rem">
                    <div class="card-body">
                        <h5 class="card-title">'.$row['eloetel'].'</h5>
                         <p class="card-text">'.$row['ar'].' Ft</p>
                        
                    </div>
                </div>
            </div>';
            }

            ?>
            </div>
        <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-6"><h1 style="text-align:center">Gyrosok</h1></div>
            <div class="col"></div>
        </div>
    </div>
        <div class="container">
        <div class="row">
            <?php 
            while($row = mysqli_fetch_assoc($gyros)){
                echo '<div class="col">
                <div class="card" style="width: 21rem;height:10rem">
                    <div class="card-body">
                        <h5 class="card-title">'.$row['gyros'].'</h5>
                        <h6 class="card-subtitle mb-2 text-mutedw">'.$row['feltet'].'</h6>
                        <p class="card-text">'.$row['ar'].' Ft</p>
                        
                    </div>
                </div>
            </div>';
            }

            ?>
            </div>
        <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-6"><h1 style="text-align:center">Tortillák</h1></div>
            <div class="col"></div>
        </div>
    </div>
        <div class="container">
        <div class="row">
            <?php 
            while($row = mysqli_fetch_assoc($tortilla)){
                echo '<div class="col">
                <div class="card" style="width: 21rem;height:10rem">
                    <div class="card-body">
                        <h5 class="card-title">'.$row['tortillak'].'</h5>
                        <h6 class="card-subtitle mb-2 text-mutedw">'.$row['feltet'].'</h6>
                        <p class="card-text">'.$row['ar'].' Ft</p>
                        
                    </div>
                </div>
            </div>';
            }

            ?>
            </div>
        <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-6"><h1 style="text-align:center">Savanyúságok</h1></div>
            <div class="col"></div>
        </div>
    </div>
        <div class="container">
        <div class="row">
            <?php 
            while($row = mysqli_fetch_assoc($savanyu)){
                echo '<div class="col">
                <div class="card" style="width: 21rem;height:8rem">
                    <div class="card-body">
                        <h5 class="card-title">'.$row['savanyu'].'</h5>
                        <p class="card-text">'.$row['ar'].' Ft</p>
                        
                    </div>
                </div>
            </div>';
            }

            ?>
            </div>
        <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-6"><h1 style="text-align:center">Palacsinták</h1></div>
            <div class="col"></div>
        </div>
    </div>
        <div class="container">
        <div class="row">
            <?php 
            while($row = mysqli_fetch_assoc($pancake)){
                echo '<div class="col-4">
                <div class="card" style="width: 21rem;height:8rem">
                    <div class="card-body">
                        <h5 class="card-title">'.$row['pancake'].'</h5>
                        <h6 class="card-subtitle mb-2 text-mutedw">'.$row['mennyiseg'].' db</h6>
                        <p class="card-text">'.$row['ar'].' Ft</p>
                        
                    </div>
                </div>
            </div>';
            }

            ?>
            </div>
        <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-6"><h1 style="text-align:center">Desszertek</h1></div>
            <div class="col"></div>
        </div>
    </div>
        <div class="container">
        <div class="row">
            <?php 
            while($row = mysqli_fetch_assoc($dessert)){
                echo '<div class="col-4">
                <div class="card" style="width: 21rem;height:8rem">
                    <div class="card-body">
                        <h5 class="card-title">'.$row['dessert'].'</h5>
                        <p class="card-text">'.$row['ar'].' Ft</p>
                        
                    </div>
                </div>
            </div>';
            }

            ?>
            </div>
        <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-6"><h1 style="text-align:center">Üdítők</h1></div>
            <div class="col"></div>
        </div>
    </div>
        <div class="container">
        <div class="row">
            <?php 
            while($row = mysqli_fetch_assoc($udito)){
                echo '<div class="col-4">
                <div class="card" style="width: 21rem;height:8rem">
                    <div class="card-body">
                        <h5 class="card-title">'.$row['udito'].'</h5>
                        <h6 class="card-subtitle mb-2 text-mutedw">'.$row['mennyiseg'].' L</h6>
                        <p class="card-text">'.$row['ar'].' Ft</p>
                        
                    </div>
                </div>
            </div>';
            }

            ?>
            </div>
        <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-6"><h1 style="text-align:center">Szószok</h1></div>
            <div class="col"></div>
        </div>
    </div>
        <div class="container">
        <div class="row">
            <?php 
            while($row = mysqli_fetch_assoc($szosz)){
                echo '<div class="col-4">
                <div class="card" style="width: 21rem;height:8rem">
                    <div class="card-body">
                        <h5 class="card-title">'.$row['szoszok'].'</h5>
                        <h6 class="card-subtitle mb-2 text-mutedw">'.$row['mennyiseg'].' ml</h6>
                        <p class="card-text">'.$row['ar'].' Ft</p>
                        
                    </div>
                </div>
            </div>';
            }

            ?>
            </div>
        <div class="container">
        <div class="row">
            <div class="col"></div>
            <div class="col-6"><h1 style="text-align:center">Evőeszkoz</h1></div>
            <div class="col"></div>
        </div>
    </div>
        <div class="container">
        <div class="row">
            <?php 
            while($row = mysqli_fetch_assoc($evoeszkoz)){
                echo '<div class="col-4">
                <div class="card" style="width: 21rem;height:8rem">
                    <div class="card-body">
                        <h5 class="card-title">'.$row['evoeszkoz'].'</h5>
                        <p class="card-text">'.$row['ar'].' Ft</p>
                        
                    </div>
                </div>
            </div>';
            }

            ?>
            
            </div>
    </div>
    </div>

</body>

</html>