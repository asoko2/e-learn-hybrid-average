<?php

session_start();

if (isset($_SESSION['name'])) {
    header('location: index.php');
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Sign In | Adaptive Learning</title>
    <link href="assets/css/style.css" rel="stylesheet" />
</head>

<body>
    <main class="form-signin">
        <form method="POST" action="action/login.php">
            <h1 class="h3 mb-3 fw-normal text-center">Silahkan Login</h1>
            <?php if (isset($_SESSION['error_sign_in'])) { ?>
            <div class="alert alert-danger" role="alert">
                <?php echo $_SESSION['error_sign_in'] ?>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <?php } ?>
            <div class="form-floating">
                <input type="text" class="form-control" id="floatingInput" name="login" placeholder="name@example.com">
                <label for="floatingInput">Login/Email/NIS/NIP</label>
            </div>
            <div class="form-floating">
                <input type="password" class="form-control" name="password" id="floatingPassword"
                    placeholder="Password">
                <label for="floatingPassword">Password</label>
            </div>

            <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
            <hr />
            <a href="sign-up.php" class="btn btn-lg btn-dark w-100" style="text-decoration: none;">Register</a>
        </form>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous">
    </script>
</body>

</html>