<?php
include('../config/db.php');
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    //GET login and password
    $login = mysqli_real_escape_string($conn, $_POST['login']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);

    $sql = "SELECT * FROM users where login = '$login'";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);

    //check if result = 1
    if (mysqli_num_rows($result) == 1) {
        //verify password
        // var_dump('error');
        if (password_verify($password, $row['password'])) {
            // session_register('username');
            $_SESSION['login_user'] = $login;
            $_SESSION['level_user'] = $row['level_user'];
            //get user detail
            if ($row['level_user'] == 1) {
                $result = mysqli_query($conn, "SELECT * FROM admin where user_id = " . $row['id']);
                $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
                $_SESSION['name'] = $row['admin_name'];
                $_SESSION['login'] = $row['email'];
                header("location: ../admin");
            } elseif ($row['level_user'] == 2) {
                $result = mysqli_query($conn, "SELECT * FROM teachers where user_id = " . $row['id']);
                $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
                $_SESSION['name'] = $row['teacher_name'];
                if ($row['teacher_type'] == 1) {
                    $_SESSION['login'] = $row['nip'];
                } else {
                    $_SESSION['login'] = $row['email'];
                }
                header("location: ../guru");
            } else {
                $result = mysqli_query($conn, "SELECT * FROM student where user_id = " . $row['id']);
                $row = mysqli_fetch_array($result, MYSQLI_ASSOC);

                $_SESSION['name'] = $row['student_name'];
                $_SESSION['student_id'] = $row['id'];
                $_SESSION['login'] = $row['nis'];
                header("location: ../student");
            }
        } else {
            $_SESSION['error_sign_in'] = "Username atau Password salah";
            header("location: ../sign-in.php");
        }
    } else {
        $_SESSION['error_sign_in'] = "Username";
        header("location: ../sign-in.php");
    }
}