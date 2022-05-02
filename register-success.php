<?php

session_start();
session_destroy();

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
    <title>Register | Adaptive Learning</title>
    <link href="assets/css/style.css" rel="stylesheet" />
</head>

<body>
    <main class="mx-auto text-center">
        <h1>Selamat anda telah berhasil melakukan registrasi!</h1>
        <h4>Silahkan login menggunakan tombol di bawah ini</h4>
        <a href="sign-in.php" class="btn btn-primary">Login</a>
    </main>
</body>

</html>