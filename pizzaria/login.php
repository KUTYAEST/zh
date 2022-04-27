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
  <link rel="stylesheet" href="oldalak.css">
</head>

<body>
  <!-- navbar -->
  <?php require_once "navbar.php" ?>
  <!-- navbar vege -->
  <div class="container">
    <div class="row">
      <div class="col"></div>
      <div class="col">
        <form action="./includes/login.php" method="POST">
          <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">Email address</label>
            <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="valami@valami.com" name="email" required> 
          </div>
          <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">password</label>
            <input type="password" class="form-control" id="exampleFormControlInput1" placeholder="Jelszó" name="password" required>
            <br>
            <button type="submit" name="login" class="btn btn-dark">login</button>

          </div>
        </form>
      </div>
      <div class="col"></div>

    </div>
  </div>
</body>

</html>