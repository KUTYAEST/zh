<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Két Egér</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</head>
<body>

<?php 

session_start();
?>    <div class="container">

        <div class="row">
                <div class="col">

                </div>
                <div class="col-7">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light">
                     <div class="container-fluid">
                        <a class="navbar-brand" href="index.php">Két Egér Pizzéria</a>
                      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                       <span class="navbar-toggler-icon"></span>
                       </button>
                      <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                        <li class="nav-item">
                         <a class="nav-link active" href="registration.php">Regisztráció</a>
                          </li>
                          <li class="nav-item">
                         <a class="nav-link active" href="login.php">Bejentkezés</a>
                          </li>
                           <li class="nav-item">
                             <a class="nav-link" href="etlap.php">Étlap</a>
                              </li>

                         
                         <?php if(isset($_SESSION['email'])&&
                         $_SESSION['email'] !=""){
                           echo ' <li class="nav-item">
                             <a class="nav-link" href="jelentkezes.php">Jelentkezés</a>
                              </li>';

                         }?>
                         <?php if(isset($_SESSION['email'])&&
                         $_SESSION['email'] !=""){
                           echo ' <li class="nav-item">
                             <a class="nav-link" name="logout" href="logout.php">Kijelentkezés</a>
                              </li>';

                         }?>
                              
                             
                          </ul>
                         </div>
                        </div>
                    </nav>
                </div>
                <div class="col">
                    
                </div>
        </div>

    </div>

</body>
</html>